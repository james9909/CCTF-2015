.class Lcom/snapchat/android/location/LocationPermissionsAccessor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/location/LocationPermissionsAccessor;->a(Landroid/content/Context;Lcom/snapchat/android/location/LocationPermissionsAccessor$LocationPermissionsDialogListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/SharedPreferences;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/snapchat/android/location/LocationPermissionsAccessor$LocationPermissionsDialogListener;

.field final synthetic d:Lcom/snapchat/android/location/LocationPermissionsAccessor;


# direct methods
.method constructor <init>(Lcom/snapchat/android/location/LocationPermissionsAccessor;Landroid/content/SharedPreferences;Landroid/content/Context;Lcom/snapchat/android/location/LocationPermissionsAccessor$LocationPermissionsDialogListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/snapchat/android/location/LocationPermissionsAccessor$1;->d:Lcom/snapchat/android/location/LocationPermissionsAccessor;

    iput-object p2, p0, Lcom/snapchat/android/location/LocationPermissionsAccessor$1;->a:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/snapchat/android/location/LocationPermissionsAccessor$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/snapchat/android/location/LocationPermissionsAccessor$1;->c:Lcom/snapchat/android/location/LocationPermissionsAccessor$LocationPermissionsDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 65
    iget-object v0, p0, Lcom/snapchat/android/location/LocationPermissionsAccessor$1;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 66
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->z:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 67
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 68
    iget-object v0, p0, Lcom/snapchat/android/location/LocationPermissionsAccessor$1;->d:Lcom/snapchat/android/location/LocationPermissionsAccessor;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/location/LocationPermissionsAccessor;->a(Z)V

    .line 69
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/snapchat/android/model/UserPrefs;->g(Z)V

    .line 70
    iget-object v0, p0, Lcom/snapchat/android/location/LocationPermissionsAccessor$1;->d:Lcom/snapchat/android/location/LocationPermissionsAccessor;

    invoke-virtual {v0}, Lcom/snapchat/android/location/LocationPermissionsAccessor;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 74
    iget-object v1, p0, Lcom/snapchat/android/location/LocationPermissionsAccessor$1;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/location/LocationPermissionsAccessor$1;->c:Lcom/snapchat/android/location/LocationPermissionsAccessor$LocationPermissionsDialogListener;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/snapchat/android/location/LocationPermissionsAccessor$1;->c:Lcom/snapchat/android/location/LocationPermissionsAccessor$LocationPermissionsDialogListener;

    invoke-interface {v0, v2}, Lcom/snapchat/android/location/LocationPermissionsAccessor$LocationPermissionsDialogListener;->a(Z)V

    .line 79
    :cond_1
    return-void
.end method
