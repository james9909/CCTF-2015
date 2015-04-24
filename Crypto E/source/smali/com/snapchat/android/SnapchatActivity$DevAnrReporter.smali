.class Lcom/snapchat/android/SnapchatActivity$DevAnrReporter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/yorick/AnrListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/SnapchatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DevAnrReporter"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/SnapchatActivity;


# direct methods
.method constructor <init>(Lcom/snapchat/android/SnapchatActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/snapchat/android/SnapchatActivity$DevAnrReporter;->a:Lcom/snapchat/android/SnapchatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/yorick/ParsedTrace;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/snapchat/android/SnapchatActivity$DevAnrReporter;->a:Lcom/snapchat/android/SnapchatActivity;

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 141
    new-instance v1, Lcom/snapchat/android/SnapchatActivity$DevAnrReporter$1;

    invoke-direct {v1, p0, v0}, Lcom/snapchat/android/SnapchatActivity$DevAnrReporter$1;-><init>(Lcom/snapchat/android/SnapchatActivity$DevAnrReporter;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/snapchat/android/util/threading/ThreadUtils;->a(Ljava/lang/Runnable;)V

    .line 149
    invoke-static {}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a()Lcom/snapchat/android/notification/AndroidNotificationManager;

    move-result-object v1

    iget-object v2, p1, Lcom/snapchat/yorick/ParsedTrace;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/notification/AndroidNotificationManager;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 150
    return-void
.end method
