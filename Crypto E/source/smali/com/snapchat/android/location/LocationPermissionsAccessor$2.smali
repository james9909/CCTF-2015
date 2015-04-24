.class Lcom/snapchat/android/location/LocationPermissionsAccessor$2;
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
.field final synthetic a:Lcom/snapchat/android/location/LocationPermissionsAccessor$LocationPermissionsDialogListener;

.field final synthetic b:Lcom/snapchat/android/location/LocationPermissionsAccessor;


# direct methods
.method constructor <init>(Lcom/snapchat/android/location/LocationPermissionsAccessor;Lcom/snapchat/android/location/LocationPermissionsAccessor$LocationPermissionsDialogListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/snapchat/android/location/LocationPermissionsAccessor$2;->b:Lcom/snapchat/android/location/LocationPermissionsAccessor;

    iput-object p2, p0, Lcom/snapchat/android/location/LocationPermissionsAccessor$2;->a:Lcom/snapchat/android/location/LocationPermissionsAccessor$LocationPermissionsDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/snapchat/android/location/LocationPermissionsAccessor$2;->a:Lcom/snapchat/android/location/LocationPermissionsAccessor$LocationPermissionsDialogListener;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/snapchat/android/location/LocationPermissionsAccessor$2;->a:Lcom/snapchat/android/location/LocationPermissionsAccessor$LocationPermissionsDialogListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/snapchat/android/location/LocationPermissionsAccessor$LocationPermissionsDialogListener;->a(Z)V

    .line 89
    :cond_0
    return-void
.end method
