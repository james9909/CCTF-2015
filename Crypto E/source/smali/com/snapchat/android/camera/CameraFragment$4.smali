.class Lcom/snapchat/android/camera/CameraFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/camera/CameraFragment;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/camera/CameraFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/camera/CameraFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/snapchat/android/camera/CameraFragment$4;->a:Lcom/snapchat/android/camera/CameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1021
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 1022
    return-void
.end method
