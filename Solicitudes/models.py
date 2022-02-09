# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from datetime import date, datetime
from tabnanny import verbose
from django.db import models
from operator import contains
from django.utils.translation import gettext as _
from django.core.exceptions import ValidationError
from .validators import UnicodenameValidator
from django.utils import timezone
#from Nomencladores.models import Cliente, ContratoProveedor, Pais, Producto, Proveedor, ContratoProveedor


class SolicitudesBackupview(models.Model):
    id = models.BigAutoField(primary_key=True)

    class Meta:
        managed = False
        db_table = 'Solicitudes_backupview'


class AdminInterfaceTheme(models.Model):
    name = models.CharField(unique=True, max_length=50)
    active = models.BooleanField()
    title = models.CharField(max_length=50)
    title_visible = models.BooleanField()
    logo = models.CharField(max_length=100)
    logo_visible = models.BooleanField()
    css_header_background_color = models.CharField(max_length=10)
    title_color = models.CharField(max_length=10)
    css_header_text_color = models.CharField(max_length=10)
    css_header_link_color = models.CharField(max_length=10)
    css_header_link_hover_color = models.CharField(max_length=10)
    css_module_background_color = models.CharField(max_length=10)
    css_module_text_color = models.CharField(max_length=10)
    css_module_link_color = models.CharField(max_length=10)
    css_module_link_hover_color = models.CharField(max_length=10)
    css_module_rounded_corners = models.BooleanField()
    css_generic_link_color = models.CharField(max_length=10)
    css_generic_link_hover_color = models.CharField(max_length=10)
    css_save_button_background_color = models.CharField(max_length=10)
    css_save_button_background_hover_color = models.CharField(max_length=10)
    css_save_button_text_color = models.CharField(max_length=10)
    css_delete_button_background_color = models.CharField(max_length=10)
    css_delete_button_background_hover_color = models.CharField(max_length=10)
    css_delete_button_text_color = models.CharField(max_length=10)
    css = models.TextField()
    list_filter_dropdown = models.BooleanField()
    related_modal_active = models.BooleanField()
    related_modal_background_color = models.CharField(max_length=10)
    related_modal_rounded_corners = models.BooleanField()
    logo_color = models.CharField(max_length=10)
    recent_actions_visible = models.BooleanField()
    favicon = models.CharField(max_length=100)
    related_modal_background_opacity = models.CharField(max_length=5)
    env_name = models.CharField(max_length=50)
    env_visible_in_header = models.BooleanField()
    env_color = models.CharField(max_length=10)
    env_visible_in_favicon = models.BooleanField()
    related_modal_close_button_visible = models.BooleanField()
    language_chooser_active = models.BooleanField()
    language_chooser_display = models.CharField(max_length=10)
    list_filter_sticky = models.BooleanField()
    form_pagination_sticky = models.BooleanField()
    form_submit_sticky = models.BooleanField()
    css_module_background_selected_color = models.CharField(max_length=10)
    css_module_link_selected_color = models.CharField(max_length=10)
    logo_max_height = models.SmallIntegerField()
    logo_max_width = models.SmallIntegerField()

    class Meta:
        managed = False
        db_table = 'admin_interface_theme'

class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.BooleanField()
    username = models.CharField(unique=True, max_length= 25)
    first_name = models.CharField(max_length=50)
    last_name = models.CharField(max_length=50)
    email = models.CharField(max_length=70)
    is_staff = models.BooleanField()
    is_active = models.BooleanField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'

class AuthUserGroups(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class DashStatsCriteria(models.Model):
    id = models.BigAutoField(primary_key=True)
    criteria_name = models.CharField(max_length=90)
    criteria_fix_mapping = models.JSONField(blank=True, null=True)
    dynamic_criteria_field_name = models.CharField(max_length=90, blank=True, null=True)
    criteria_dynamic_mapping = models.JSONField(blank=True, null=True)
    created_date = models.DateTimeField()
    updated_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'dash_stats_criteria'


class DashboardStats(models.Model):
    id = models.BigAutoField(primary_key=True)
    graph_key = models.CharField(unique=True, max_length=90)
    graph_title = models.CharField(max_length=90)
    model_app_name = models.CharField(max_length=90)
    model_name = models.CharField(max_length=90)
    date_field_name = models.CharField(max_length=90)
    operation_field_name = models.CharField(max_length=90, blank=True, null=True)
    type_operation_field_name = models.CharField(max_length=90, blank=True, null=True)
    is_visible = models.BooleanField()
    created_date = models.DateTimeField()
    updated_date = models.DateTimeField()
    user_field_name = models.CharField(max_length=90, blank=True, null=True)
    default_chart_type = models.CharField(max_length=90)
    default_time_period = models.IntegerField()
    default_time_scale = models.CharField(max_length=90)
    y_axis_format = models.CharField(max_length=90, blank=True, null=True)
    distinct = models.BooleanField()
    default_multiseries_criteria_id = models.BigIntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'dashboard_stats'


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.SmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    id = models.BigAutoField(primary_key=True)
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class RegistroControlSolicitud(models.Model):
    numsolicitud = models.IntegerField(primary_key=True)
    numcontratocliente = models.IntegerField()
    numcontratoproveedor = models.IntegerField()
    fechasol = models.DateField()

    class Meta:
        managed = False
        db_table = 'registro_control_solicitud'
        
    class Meta:
        managed = False
        db_table = 'registro_control_solicitud'


class ReportsSavedreport(models.Model):
    id = models.BigAutoField(primary_key=True)
    date_modified = models.DateTimeField()
    date_created = models.DateTimeField()
    report = models.CharField(max_length=255, blank=True, null=True)
    report_file = models.CharField(max_length=100)
    run_by = models.ForeignKey(AuthUser, models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'reports_savedreport'

def validate_numsolicitud(numsolicitud):
        if numsolicitud <= 0:
            raise ValidationError(
            _('%(numsolicitud)s no es correcto'),
            params={'numsolicitud': numsolicitud},
        )
            
def validate_cantidad(cantidad):
        if cantidad <= 0:
            raise ValidationError(
            _('%(cantidad)s debe ser un valor positivo'),
            params={'cantidad': cantidad},
             )

def validate_fecha(fechasol):
        if fechasol < date.today():
            raise ValidationError(
            _('%(fechasol)s la fecha no puede se anterior al día actual'),
            params={'fecha': fechasol},
             )            
       

class Solicitud(models.Model):
    numsolicitud = models.AutoField(primary_key=True, editable = False)
    #numcontratocliente = models.ForeignKey(Cliente, models.DO_NOTHING, db_column='numcontratocliente')
    #idproducto = models.ForeignKey(Producto, models.DO_NOTHING, db_column='idproducto')
    fechasol = models.DateField(default= date.today() , validators=[validate_fecha])
    #numcontratoproveedor = models.ForeignKey(Proveedor, models.DO_NOTHING, db_column='numcontratoproveedor', blank=True, null=True)
    #cantidad = models.IntegerField(blank=True, null=True, validators=[validate_cantidad])
    aprobada = models.BooleanField(default = False)
    
    class Meta:
        verbose_name = _('Solicitud')
        verbose_name_plural = _('Solicitudes')
        managed = True
        db_table = 'solicitud'
        unique_together = (('numsolicitud',),)