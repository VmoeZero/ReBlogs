"""ReBlog URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
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
from django.template.context_processors import static
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static
from blog import  views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('blog/', include('blog.urls')),
    path('', views.index_unlog, name='index_unlog'),
    path('login', views.login, name='login'),
    path('log', views.logsuccess, name='login-success'),
    path('register', views.register, name='register'),
    path('forget', views.forget_password, name='forget'),
    path('reset', views.reset, name='reset'),
    path('summernote/', include('django_summernote.urls')),
    path('logout', views.log_out, name='logout'),
]
