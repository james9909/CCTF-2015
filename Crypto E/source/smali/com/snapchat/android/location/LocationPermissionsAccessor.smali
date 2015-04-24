.class public Lcom/snapchat/android/location/LocationPermissionsAccessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/location/LocationPermissionsAccessor$LocationPermissionsDialogListener;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/location/LocationPermissionsAccessor;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/location/LocationPermissionsAccessor;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    .line 30
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/snapchat/android/location/LocationPermissionsAccessor;->a:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/snapchat/android/location/LocationPermissionsAccessor;->b:Landroid/location/LocationManager;

    .line 36
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/snapchat/android/location/LocationPermissionsAccessor$LocationPermissionsDialogListener;)V
    .locals 4
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 56
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 58
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 59
    const v2, 0x7f0c0118

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 60
    const v2, 0x7f0c0117

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 61
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 62
    const v2, 0x7f0c0142

    new-instance v3, Lcom/snapchat/android/location/LocationPermissionsAccessor$1;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/snapchat/android/location/LocationPermissionsAccessor$1;-><init>(Lcom/snapchat/android/location/LocationPermissionsAccessor;Landroid/content/SharedPreferences;Landroid/content/Context;Lcom/snapchat/android/location/LocationPermissionsAccessor$LocationPermissionsDialogListener;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 81
    const v0, 0x7f0c00dc

    new-instance v2, Lcom/snapchat/android/location/LocationPermissionsAccessor$2;

    invoke-direct {v2, p0, p2}, Lcom/snapchat/android/location/LocationPermissionsAccessor$2;-><init>(Lcom/snapchat/android/location/LocationPermissionsAccessor;Lcom/snapchat/android/location/LocationPermissionsAccessor$LocationPermissionsDialogListener;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 91
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 92
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 51
    invoke-static {p1}, Lcom/snapchat/android/model/UserPrefs;->m(Z)V

    .line 52
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/EnableFiltersEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/EnableFiltersEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/snapchat/android/location/LocationPermissionsAccessor;->b:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->L()Z

    move-result v0

    return v0
.end method
