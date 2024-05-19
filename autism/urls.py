"""
URL configuration for autism project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from backend import views
from django.conf.urls import  include
from django.contrib.auth import views as auth_views
from django.conf.urls.static import static
from django.conf import settings

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.home),            path('choosing', views.choosing, name="choosing"),
   path('logout/',auth_views.LogoutView.as_view(),name='logout'),
        path('loginn/',views.loginn,name="loginn"),

        path('login/',views.login,name="login"),
        path('signup',views.signup,name="signup"),
    path("accounts/", include("allauth.urls")), #most important
    path('fine/', views.fine,name='fine'),

    path('thankyou/', views.marks,name='thankyou'),
    path('start-exam/', views.start_exam_view,name='start-exam'),
    path('question/', views.question,name='question'),
      path('doctor-signup', views.doctor_signup_view, name="doctor-signup"),
          path('save_coordinate/', views.save_coordinate,name='save_coordinate'),
path('patientchat',views.patientchat,name="patientchat"),
    path('chatgpt/', views.chatgpt),
        path('game/', views.game),
                path('alphabet/', views.alphabet),
                path('memory/', views.memorygame),
path('animals/',views.letterwriting),


            path('patient-signup', views.patient_signup_view, name="patient-signup"),
                path('add_coordinate/', views.add_coordinate, name='add_coordinate'),
  path('doctormain',views.doctormain,name="doctormain"),
        path('doctorpatient',views.doctorpatient,name="doctorpatient"),
                path("acc", views.acc, name="acc"), #most important

    path('patientmain',views.patientmain,name="patientmain"),
    path('patient-doctor/<int:pk>',views.patient_view_doctor,name="patient-doctor"),
       path('calendar/', views.CalendarView.as_view(), name='calendar'),
                  path('patient-calendar/', views.PatientCalendarView.as_view(), name='patient-calendar'),
                  path('paunaccept-calendar/', views.PaUnAccept.as_view(), name='paunaccept-calendar'),
                                    path('unaccept-calendar/', views.UnCalendarView.as_view(), name='unaccept-calendar'),


    path('paevent/new/', views.paevent, name='paevent_new'),
    path('paevent/edit/<event_id>/', views.paevent, name='paevent_edit'),
  path('event/new/', views.event, name='event_new'),
    path('event/edit/<event_id>/', views.event, name='event_edit'),

]+ static(settings.STATIC_URL, document_root=settings.STATIC_ROOT) + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
