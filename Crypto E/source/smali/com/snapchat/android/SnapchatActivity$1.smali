.class Lcom/snapchat/android/SnapchatActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/SnapchatActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/SnapchatActivity;


# direct methods
.method constructor <init>(Lcom/snapchat/android/SnapchatActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/snapchat/android/SnapchatActivity$1;->a:Lcom/snapchat/android/SnapchatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lcom/snapchat/android/SnapchatActivity$1;->a:Lcom/snapchat/android/SnapchatActivity;

    iget-object v0, v0, Lcom/snapchat/android/SnapchatActivity;->t:Lcom/snapchat/android/util/debug/GracefulExceptionHandler;

    invoke-virtual {v0, p2}, Lcom/snapchat/android/util/debug/GracefulExceptionHandler;->a(Ljava/lang/Throwable;)V

    .line 187
    return-void
.end method
