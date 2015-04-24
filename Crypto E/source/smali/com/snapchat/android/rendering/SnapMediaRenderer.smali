.class public interface abstract Lcom/snapchat/android/rendering/SnapMediaRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;,
        Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;
    }
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Landroid/view/ViewGroup;)V
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
.end method

.method public abstract a(Lcom/snapchat/android/model/ReceivedSnap;ZLcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;)V
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method
