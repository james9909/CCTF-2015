.class public Lcom/snapchat/android/util/system/ClockProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/snapchat/android/util/system/Clock;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 17
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/util/system/Clock;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/snapchat/android/util/system/ClockProvider;->a:Lcom/snapchat/android/util/system/Clock;

    return-object v0
.end method
