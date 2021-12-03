# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models
from django.utils.translation import gettext as _
from django.core.exceptions import ValidationError


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


class Almacen(models.Model):
    idalmacen = models.BigIntegerField(primary_key=True, unique=True)
    tipoalmacen = models.CharField(max_length=30)

    class Meta:
        managed = False
        db_table = 'almacen'


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
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
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


class Cliente(models.Model):
    numcontratocliente = models.OneToOneField('ContratoCliente', models.DO_NOTHING, db_column='numcontratocliente', primary_key=True)
    nomcliente = models.CharField(max_length=45)
    osde = models.CharField(max_length=45)

    class Meta:
        managed = False
        db_table = 'cliente'


class ContratoCliente(models.Model):
    numcontratocliente = models.BigIntegerField(primary_key=True, unique=True)
    vigencia = models.DateField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'contrato_cliente'


class ContratoProveedor(models.Model):
    numcontratoproveedor = models.BigIntegerField(primary_key=True, unique=True)
    vigencia = models.DateField()

    class Meta:
        managed = False
        db_table = 'contrato_proveedor'


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


class FacturaCliente(models.Model):
    codfacturacliente = models.AutoField(primary_key=True)
    numsolicitud = models.ForeignKey('Solicitud', models.DO_NOTHING, db_column='numsolicitud')
    numcontratocliente = models.BigIntegerField()
    idproducto = models.IntegerField()
    precio = models.FloatField()
    fechafact = models.DateField()

    class Meta:
        managed = False
        db_table = 'factura_cliente'
        unique_together = (('codfacturacliente', 'numsolicitud'),)


class FacturaProveedor(models.Model):
    codfacturaprov = models.IntegerField(primary_key=True)
    numcontratoproveedor = models.ForeignKey('Proveedor', models.DO_NOTHING, db_column='numcontratoproveedor')
    idproducto = models.ForeignKey('Producto', models.DO_NOTHING, db_column='idproducto')
    precio = models.FloatField()
    cantidad = models.IntegerField()
    fechafacturaprov = models.DateField()

    class Meta:
        managed = False
        db_table = 'factura_proveedor'
        unique_together = (('codfacturaprov', 'numcontratoproveedor', 'idproducto'),)


class Historial(models.Model):
    idhistorial = models.AutoField(primary_key=True)
    fecha = models.DateField()
    codfacturaprov = models.ForeignKey(FacturaProveedor, models.DO_NOTHING, db_column='codfacturaprov')
    numcontratoproveedor = models.BigIntegerField()
    idproducto = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'historial'
        unique_together = (('idhistorial', 'codfacturaprov'),)


class Pais(models.Model):
    idpais = models.CharField(primary_key=True, max_length=3)
    pais = models.CharField(max_length=30)

    class Meta:
        managed = False
        db_table = 'pais'


class Producto(models.Model):
    idproducto = models.IntegerField(primary_key=True)
    nombreproducto = models.CharField(max_length=30)
    descripcion = models.CharField(max_length=45)
    idalmacen = models.ForeignKey(Almacen, models.DO_NOTHING, db_column='idalmacen')
    tipo = models.CharField(max_length=10)

    class Meta:
        managed = False
        db_table = 'producto'


class Proveedor(models.Model):
    numcontratoproveedor = models.OneToOneField(ContratoProveedor, models.DO_NOTHING, db_column='numcontratoproveedor', primary_key=True)
    nomproveedor = models.CharField(max_length=45)
    idpais = models.ForeignKey(Pais, models.DO_NOTHING, db_column='idpais')

    class Meta:
        verbose_name = _('Proveedor')
        verbose_name_plural = _('Proveedores')
        managed = False
        db_table = 'proveedor'


class RegistroControlSolicitud(models.Model):
    numsolicitud = models.IntegerField(primary_key=True)
    numcontratocliente = models.IntegerField()
    numcontratoproveedor = models.IntegerField()
    fechasol = models.DateField()

    class Meta:
        managed = False
        db_table = 'registro_control_solicitud'

def validate_numsolicitud(numsolicitud):
        if numsolicitud <= 0:
            raise ValidationError(
            _('%(numsolicitud)s no es correcto'),
            params={'numsolicitud': numsolicitud},
        )
            
def validate_cantidad(cantidad):
        if cantidad <= 0:
            raise ValidationError(
            _('%(cantidad)s no es correcto'),
            params={'cantidad': cantidad},
        )
            
class Solicitud(models.Model):
    numsolicitud = models.IntegerField(primary_key=True, validators=[validate_numsolicitud], unique=True)
    numcontratocliente = models.ForeignKey(Cliente, models.DO_NOTHING, db_column='numcontratocliente')
    cantidad = models.IntegerField(validators=[validate_cantidad])    
    idproducto = models.ForeignKey(Producto, models.DO_NOTHING, db_column='idproducto')
    fechasol = models.DateField()
    numcontratoproveedor = models.ForeignKey(Proveedor, models.DO_NOTHING, db_column='numcontratoproveedor', blank=True, null=True)

    class Meta:
        verbose_name = _('Solicitud')
        verbose_name_plural = _('Solicitudes')
        managed = True
        db_table = 'solicitud'
        unique_together = (('numsolicitud', 'numcontratocliente', 'idproducto'),)


class User(models.Model):
    user_id = models.AutoField(primary_key=True)
    user_title = models.CharField(max_length=100)
    user_description = models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'user'


class Usuarios(models.Model):
    user_name = models.CharField(primary_key=True, max_length=50)
    password = models.CharField(max_length=32)

    class Meta:
        managed = False
        db_table = 'usuarios'
