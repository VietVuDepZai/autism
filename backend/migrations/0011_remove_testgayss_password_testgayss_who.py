# Generated by Django 4.1 on 2024-05-21 14:57

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('backend', '0010_alter_testgayss_date'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='testgayss',
            name='password',
        ),
        migrations.AddField(
            model_name='testgayss',
            name='who',
            field=models.CharField(choices=[('Nam', 'Nam'), ('Nữ', 'Nữ')], default=None, max_length=200),
        ),
    ]