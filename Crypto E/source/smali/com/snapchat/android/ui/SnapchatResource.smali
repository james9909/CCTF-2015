.class public Lcom/snapchat/android/ui/SnapchatResource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/SnapchatResource$ResourceListener;,
        Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;
    }
.end annotation


# instance fields
.field protected b:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

.field protected c:Lcom/snapchat/android/ui/SnapchatResource$ResourceListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/ui/SnapchatResource$ResourceListener;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/snapchat/android/ui/SnapchatResource;->c:Lcom/snapchat/android/ui/SnapchatResource$ResourceListener;

    .line 26
    return-void
.end method

.method protected a(Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;)V
    .locals 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapchatResource;->b:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    if-eq p1, v0, :cond_0

    .line 30
    iput-object p1, p0, Lcom/snapchat/android/ui/SnapchatResource;->b:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    .line 31
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapchatResource;->c:Lcom/snapchat/android/ui/SnapchatResource$ResourceListener;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapchatResource;->c:Lcom/snapchat/android/ui/SnapchatResource$ResourceListener;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapchatResource;->b:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    invoke-interface {v0, v1}, Lcom/snapchat/android/ui/SnapchatResource$ResourceListener;->a(Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;)V

    .line 35
    :cond_0
    return-void
.end method

.method public c()Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapchatResource;->b:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    return-object v0
.end method
