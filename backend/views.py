from django.views.decorators.csrf import csrf_exempt
from . import forms,models
from datetime import datetime, timedelta, date
from django.utils.safestring import mark_safe
from .utility import Calendar
import calendar
from django.views import generic
from .forms import EventForm
from django.shortcuts import render,redirect,HttpResponse, get_object_or_404,HttpResponseRedirect
from django.http import JsonResponse
from django.contrib.auth import login as auth_login
from django.contrib.auth import authenticate
from django.contrib.auth.models import Group,User
import google.generativeai as genai
import re
# Create your views here.
# add here to your generated API key
genai.configure(api_key="AIzaSyBLccnrIBeX4QpflJE1lKbSLleiv-MA6YA")
def text_to_html_paragraphs(text):
    # First, replace multiple newlines with a single newline,
    # so you don't get empty paragraphs
    text = re.sub(r'\n\s*\n', '\n', text)

    # Split the text into lines
    lines = text.split('\n')

    # Wrap each line in a <p> tag and join them
    return ''.join(f'{line.strip()}\n<br>' for line in lines)
def chat(request):           
    return render(request,"chat.html",{'doctor':models.Doctor.objects.all()})
# kết nối ChatGPT
def chatgpt(request):
    text = request.GET.get('prompt')
    model = genai.GenerativeModel("gemini-pro")
    chat = model.start_chat()
    response = chat.send_message(text)
    # Extract necessary data from response
    mess = text_to_html_paragraphs(response.text)
    return JsonResponse({"message":  mess})

    # bot_response = response["choices"][0]["message"]["content"]
    # mess = text_to_html_paragraphs(bot_response)
    # return JsonResponse({'message': mess})
# Create your views here.

@csrf_exempt
def start_exam_view(request,fakeuser,mobi):
    questions=models.Question.objects.all()
    fakeuser = models.TestGayss.objects.filter(mobile=mobi,date=fakeuser)
    result = models.Result()
    if request.method=='POST':
        total_marks=0
        questions=models.Question.objects.all()
        questions_num=models.Question.objects.all().count()
        ans = []
        for i in range(questions_num):
            selected_ans = request.COOKIES.get(str(i+1))
            print(selected_ans)
            ans.append
            actual_answer = questions[i].answer
            if selected_ans == actual_answer:
                total_marks = total_marks + questions[i].marks
        
        if total_marks <= 2:
            result.typeof = """     <div style='font-weight: 100 ;    font-size: 17px;
                '>● Lĩnh vực <span class='antd-pro-pages-checking-index-textBoldExplain'>M-Chat</span> điểm của trẻ đang nằm là <span class='antd-pro-pages-checking-index-textBoldExplain'>vùng an toàn</span>. <br>&emsp; ⇒ <span style='font-style: italic;'> Kết qủa này thể hiện trẻ không có vấn đề về <span>M-Chat</span>. Các biểu hiện là bình thường như mọi trẻ em khác cùng trang lứa. </span></div>
    """
        if total_marks > 2 and total_marks <= 7:
            result.typeof = """     <div style='font-weight: 100 ;    font-size: 17px;
                '>● Lĩnh vực <span class='antd-pro-pages-checking-index-textBoldExplain'>M-Chat</span> điểm của trẻ đang nằm là <span class='antd-pro-pages-checking-index-textBoldExplain'>vùng cảnh báo</span>. <br>&emsp; ⇒ <span style='font-style: italic;'>  Kết quả này thể hiện trẻ có nguy cơ cảnh báo cao gặp các vấn đề tâm lý về <span>M-Chat</span> ,cần hỗ trợ tâm lý và theo dõi, đánh giá lại sau 3 tháng. </span></div>
    """ 
        if total_marks > 7:
            result.typeof = """     <div style='font-weight: 100 ;    font-size: 17px;
                '>● Lĩnh vực <span class='antd-pro-pages-checking-index-textBoldExplain'>M-Chat</span> điểm của trẻ đang nằm là <span class='antd-pro-pages-checking-index-textBoldExplain'>vùng nguy cơ cao</span>. <br>&emsp; ⇒ <span style='font-style: italic;'>  Kết quả này thể hiện trẻ đang gặp vấn đề về <span>M-Chat</span> cần liên hệ với các bác sĩ, chuyên gia tâm lý để có đánh giá chuyên sâu và trị liệu tâm lý tích cực sớm nhất. </span></div>
    """ 
        result.marks=total_marks
        result.tester = fakeuser[0]
        result.save()
        return redirect(f'/fine/{result.id}')

    return render(request,'start_exam.html',{'questions':questions})
def games(request):
    return render(request,'games.html')

def patientchat(request):           
    return render(request,"patient/patientchat.html",{'doctor':models.Doctor.objects.all()})
def game(request):           
    return render(request,"patient/game.html",{'doctor':models.Doctor.objects.all(),        'numpatient':models.Doctor.objects.all().count(),
})
def alphabet(request):           
    return render(request,"patient/alphabet.html",{'doctor':models.Doctor.objects.all()})
def memorygame(request):           
    return render(request,"patient/memorygame.html",{'doctor':models.Doctor.objects.all()})
def letterwriting(request):           
    return render(request,"patient/letterwriting.html",{'doctor':models.Doctor.objects.all()})
def marks(request):
    questions=models.Question.objects.all()
    result=models.Result.objects.all().last()
    return render(request,'score.html',{'questions':questions,'result':result})
def fine(request,tester):
    questions=models.Question.objects.all()
    result=models.Result.objects.get(id=tester)
    return render(request,'fine.html',{'questions':questions,'result':result})
def question(request):
    data = list(models.Question.objects.values())
    return JsonResponse(data, safe=False)
def is_doctor(user):
    return user.groups.filter(name='DOCTOR').exists()

def is_patient(user):
    return user.groups.filter(name='PATIENT').exists()
def login(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        password =request.POST.get('password')
        print("HSuuu")
        user = authenticate(request, username=username, password=password)
        
        if user is not None:
            print("HSuuu")
            auth_login(request, user)
            print(is_doctor(user))
            if is_doctor(user):
                return redirect("/doctormain")
            if is_patient(user):
                return redirect("/patientmain")
            else:
                return redirect("/choosing")
        

    context = {}
    return render(request, 'login.html', context)

def logingame(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        password =request.POST.get('password')
        print("HSuuu")
        user = authenticate(request, username=username, password=password)
        
        if user is not None:
            print("HSuuu")
            auth_login(request, user)
            print(is_doctor(user))
            if is_doctor(user):
                return redirect("/doctormain")
            if is_patient(user):
                return redirect("/game")
            else:
                return redirect("/choosing")
        

    context = {}
    return render(request, 'logingame.html', context)
def loginn(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        password =request.POST.get('password')
        print("HSuuu")
        user = authenticate(request, username=username, password=password)
        
        if user is not None:
            print("HSuuu")
            auth_login(request, user)
            print(is_doctor(user))
            if is_doctor(user):
                return redirect("/doctormain")
            if is_patient(user):
                return redirect("/patientmain")
            else:
                return redirect("/choosing")
        

    context = {}
    return render(request, 'loginn.html', context)
@csrf_exempt
def choosing(request):
    if is_doctor(request.user):
        return redirect("/doctormain")
    if is_patient(request.user):
        return redirect("/patientmain")
    else:
        username = request.COOKIES.get("username")
        password = request.COOKIES.get("password")
        email = request.COOKIES.get("email")

    return render(request,'choice.html',{'username':username, 'email':email, 'password':password})
def home(request):
    if request.user.is_authenticated: 
        if is_doctor(request.user):
            return redirect("/doctormain")
        if is_patient(request.user):
            return redirect("/patientmain")
        else:
            return redirect("/choosing")
    return render(request, 'index.html', {})

def signup(request):
    form = forms.RegistrationForm()
    if request.method == 'POST':
        form = forms.RegistrationForm(request.POST)
        if form.is_valid():
            form.save()
            return HttpResponseRedirect('/loginn')
    return render(request, 'signup.html', {'form': form})
def gayssignup(request):
    form = forms.TesstGayss()
    if request.method == 'POST':
        form = forms.TesstGayss(request.POST)
        print(request.POST)
        if form.is_valid():
            form.save()
            date = request.POST.get("date")
            mobile = request.POST.get("mobile")
            return HttpResponseRedirect(f'/start-exam/{date}/{mobile}')
    return render(request, 'signuptesst.html', {'form': form})


def doctor_signup_view(request):
    doctorForm=forms.doctorForm()
    mydict={'doctorForm':doctorForm}
    if request.method == 'POST':
        form = forms.doctorForm(request.POST,request.FILES)
        print("Hii")
        if form.is_valid():
            print("Hii")
            doctor=doctorForm.save(commit=False)
            doctor.user=request.user
            doctor.desc=request.POST.get("desc")
            # doctor.address=request.POST.get("address")
            doctor.mobile=request.POST.get("mobile")
            doctor.profile_pic=request.FILES.get("profile_pic")
            doctor.save()
            my_doctor_group = Group.objects.get_or_create(name='DOCTOR')
            my_doctor_group[0].user_set.add(request.user)
            print(my_doctor_group[0])
        return HttpResponseRedirect('logout')
    return render(request,'doctor/doctorsignup.html',context=mydict)

def patient_signup_view(request):
    patientForm=forms.patientForm()
    mydict={'patientForm':patientForm}
    if request.method == 'POST':
        form = forms.patientForm(request.POST,request.FILES)
        print("Hii")
        if form.is_valid():
            print("Hii")
            patient=patientForm.save(commit=False)
            patient.user=request.user
            patient.desc=request.POST.get("desc")
            patient.mobile=request.POST.get("mobile")
            patient.profile_pic=request.FILES.get("profile_pic")
            patient.save()
            my_patient_group = Group.objects.get_or_create(name='PATIENT')
            my_patient_group[0].user_set.add(request.user)
            print(my_patient_group[0])
        return HttpResponseRedirect('logout')
    return render(request,'patient/patientsignup.html',context=mydict)
def add_coordinate(request):
    return render(request, 'doctor/add_coordinate.html')

def doctormain(request):
    dict={
        'numpatient':models.Patient.objects.all().count(),
        'patient':models.Patient.objects.all(),
        # 'event':models.Event.objects.all().count(),

    }
    doctor = models.Doctor.objects.get(user=request.user)
    if is_doctor(request.user):
        print(doctor.address)
        if doctor.address == "":
            return redirect("/add_coordinate")
    else:
        return redirect("/")
            

    return render(request,'doctor/doctorpanel.html',context=dict)

def save_coordinate(request):
    if request.method == 'POST':
        address = request.POST.get('address')
        latitude = request.POST.get('latitude')
        longitude = request.POST.get('longitude')
        doctor = models.Doctor.objects.get(user=request.user)
        if latitude is not None and longitude is not None and address is not None:
            # Lưu tọa độ vào cơ sở dữ liệu
            doctor.address = address
            doctor.latitude = latitude
            doctor.longitude = longitude
            doctor.save()

            # Trả về JSON thành công
            return redirect("/login")
        else:
            # Trả về JSON lỗi nếu thiếu tọa độ
            return JsonResponse({'success': False, 'error': 'Missing latitude or longitude'}, status=400)
    else:
        # Trả về JSON lỗi nếu request không phải là POST
        return JsonResponse({'success': False, 'error': 'Method not allowed'}, status=405)

def doctorpatient(request):
    dict={
        'numpatient':models.Patient.objects.all().count(),
        'patient':models.Patient.objects.all(),
        # 'event':models.Event.objects.all().count(),

    }
    if is_doctor(request.user):
        pass
    else:
        return redirect("/")
            

    return render(request,'doctor/doctorpatient.html',context=dict)


def acc(request):
    user = User.objects.get(id=request.user.id)

    doctor = models.Doctor.objects.get(user=user)
    form = forms.doctorForm(instance=doctor)   
    dict={'form': form,'user':user,'numpatient':models.Patient.objects.all().count(),
        'patient':models.Patient.objects.all(),
        'doctor':doctor
        # 'event':models.Event.objects.all().count(),
        }
    if request.method == 'POST':
        form = forms.doctorForm(request.POST, instance=request.user)
        if form.is_valid():
            doctor = form.save()
            doctor.user=request.user
            doctor.save()
            return HttpResponseRedirect('/doctormain')
    return render(request,'doctor/doctoraccount.html',context=dict)



def patientupdate(request, pk):
    user = User.objects.get(id=pk)

    doctor = models.Patient.objects.get(user=user)
    form = forms.patientForm(instance=doctor)   
    dict={'form': form,'user':user,'numpatient':models.Patient.objects.all().count(),
        'patient':models.Patient.objects.all(),
        'doctor':doctor
        # 'event':models.Event.objects.all().count(),
        }
    if request.method == 'POST':
        form = forms.patientForm(request.POST, instance=user)
        if form.is_valid():
            doctor = form.save()
            doctor.user=user
            doctor.save()
            return HttpResponseRedirect('/doctormain')
    return render(request,'doctor/doctoraccount.html',context=dict)


def patientmain(request):
    dict={
        'numpatient':models.Doctor.objects.all().count(),
        'patient':models.Doctor.objects.all(),
        # 'event':models.Event.objects.all().count(),
    }
    if is_patient(request.user):
        pass
    else:
        return redirect("/")
            

    return render(request,'patient/patientpanel.html',context=dict)



def patient_view_doctor(request,pk):
    doctor = models.Doctor.objects.get(id=pk)
    doctorForm = forms.doctorForm(instance=doctor)
    if request.method == "POST":
        star = 0
        for i in range(6):
            checked = request.COOKIES.get(f"rating-{i}")
            if checked:
                doctor.timeclick += 1
                star = i
                print(star)
        doctor.star = star
        doctor.save()
        return HttpResponseRedirect(f'/patient-doctor/{pk}')
    return render(
        request=request,
        template_name='patient/doctor_contact.html',
        context={"doctor": doctor, "doctorForm":doctorForm}
        )


# Hiển thị giao diện lịch
class CalendarView(generic.ListView):
    model = models.Event
    template_name = 'calendar.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        d = get_date(self.request.GET.get('month', None))
        cal = Calendar(d.year, d.month, True)
        html_cal = cal.formatmonth(withyear=True)
        context['calendar'] = mark_safe(html_cal)
        context['prev_month'] = prev_month(d)
        context['next_month'] = next_month(d)
        context['event'] = models.Event.objects.all().count(),
        return context

class UnCalendarView(generic.ListView):
    model = models.Event
    template_name = 'calendar.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        d = get_date(self.request.GET.get('month', None))
        cal = Calendar(d.year, d.month, False)
        html_cal = cal.formatmonth(withyear=True)
        context['calendar'] = mark_safe(html_cal)
        context['prev_month'] = prev_month(d)
        context['next_month'] = next_month(d)
        context['event'] = models.Event.objects.all().count(),
        return context

def get_date(req_month):
    if req_month:
        year, month = (int(x) for x in req_month.split('-'))
        return date(year, month, day=1)
    return datetime.today()

def prev_month(d):
    first = d.replace(day=1)
    prev_month = first - timedelta(days=1)
    month = 'month=' + str(prev_month.year) + '-' + str(prev_month.month)
    return month

def next_month(d):
    days_in_month = calendar.monthrange(d.year, d.month)[1]
    last = d.replace(day=days_in_month)
    next_month = last + timedelta(days=1)
    month = 'month=' + str(next_month.year) + '-' + str(next_month.month)
    return month

def event(request, event_id=None):
    instance = models.Event()
    if event_id:
        instance = get_object_or_404(models.Event, pk=event_id)
    else:
        instance = models.Event()

    form = EventForm(request.POST or None, instance=instance)
    if request.POST and form.is_valid():
        event = form.save()
        if is_doctor(request.user):
            event.status = True
            event.save()
            return redirect("/calendar")
        else:
            event.save()
            return redirect("/patient-calendar")
    if is_doctor(request.user):
        return render(request, 'event.html', {'form': form, 'event':models.Event.objects.all().count()})
    else:
        return render(request, 'paevent.html', {'form': form, 'event':models.Event.objects.all().count()})

class PatientCalendarView(generic.ListView):
    model = models.Event
    template_name = 'patientcalendar.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        d = get_date(self.request.GET.get('month', None))
        cal = Calendar(d.year, d.month, True)
        html_cal = cal.formatmonth(withyear=True)
        context['calendar'] = mark_safe(html_cal)
        context['prev_month'] = prev_month(d)
        context['next_month'] = next_month(d)
        context['event'] = models.Event.objects.all().count(),
        return context


class PaUnAccept(generic.ListView):
    model = models.Event
    template_name = 'patientcalendar.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        d = get_date(self.request.GET.get('month', None))
        cal = Calendar(d.year, d.month, False)
        html_cal = cal.formatmonth(withyear=True)
        context['calendar'] = mark_safe(html_cal)
        context['prev_month'] = prev_month(d)
        context['next_month'] = next_month(d)
        context['event'] = models.Event.objects.all().count(),
        return context
    

def paevent(request, event_id=None):
    instance = models.Event()
    if event_id:
        instance = get_object_or_404(models.Event, pk=event_id)
    else:
        instance = models.Event()

    form = EventForm(request.POST or None, instance=instance)
    if request.POST and form.is_valid():
        form.save()
        return redirect('/patient-calendar')
    return render(request, 'paevent.html', {'form': form, 'event':models.Event.objects.all().count()})
