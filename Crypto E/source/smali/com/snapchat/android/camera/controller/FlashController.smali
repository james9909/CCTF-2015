.class public abstract Lcom/snapchat/android/camera/controller/FlashController;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Landroid/hardware/Camera$Parameters;Z)V
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public abstract a(Z)V
.end method

.method public abstract b(Landroid/hardware/Camera$Parameters;Z)V
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/snapchat/android/camera/controller/FlashController;->b(Landroid/hardware/Camera$Parameters;Z)V

    .line 37
    return-void
.end method

.method public c(Z)V
    .locals 1
    .parameter

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/snapchat/android/camera/controller/FlashController;->a(Landroid/hardware/Camera$Parameters;Z)V

    .line 55
    return-void
.end method
