.class Lnet/hockeyapp/android/UpdateFragment$1;
.super Lnet/hockeyapp/android/listeners/DownloadFileListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/UpdateFragment;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lnet/hockeyapp/android/UpdateFragment;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/UpdateFragment;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lnet/hockeyapp/android/UpdateFragment$1;->b:Lnet/hockeyapp/android/UpdateFragment;

    iput-object p2, p0, Lnet/hockeyapp/android/UpdateFragment$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Lnet/hockeyapp/android/listeners/DownloadFileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 176
    invoke-static {}, Lnet/hockeyapp/android/UpdateManager;->b()Lnet/hockeyapp/android/UpdateManagerListener;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/UpdateManagerListener;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 181
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lnet/hockeyapp/android/tasks/DownloadFileTask;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    return-void
.end method

.method public a(Lnet/hockeyapp/android/tasks/DownloadFileTask;Ljava/lang/Boolean;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 166
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateFragment$1;->b:Lnet/hockeyapp/android/UpdateFragment;

    iget-object v1, p0, Lnet/hockeyapp/android/UpdateFragment$1;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lnet/hockeyapp/android/UpdateFragment;->a(Lnet/hockeyapp/android/UpdateFragment;Landroid/app/Activity;)V

    .line 169
    :cond_0
    return-void
.end method
