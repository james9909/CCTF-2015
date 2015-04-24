.class Lnet/hockeyapp/android/tasks/CheckUpdateTask$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/tasks/CheckUpdateTask;->c(Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONArray;

.field final synthetic b:Lnet/hockeyapp/android/tasks/CheckUpdateTask;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/tasks/CheckUpdateTask;Lorg/json/JSONArray;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask$2;->b:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    iput-object p2, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask$2;->a:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 305
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask$2;->b:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    invoke-virtual {v0}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask$2;->b:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    invoke-static {v0}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->b(Lnet/hockeyapp/android/tasks/CheckUpdateTask;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "[]"

    invoke-static {v0, v1}, Lnet/hockeyapp/android/utils/VersionCache;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 309
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask$2;->b:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    invoke-static {v1}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->b(Lnet/hockeyapp/android/tasks/CheckUpdateTask;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 310
    invoke-static {}, Lnet/hockeyapp/android/UpdateManager;->a()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lnet/hockeyapp/android/UpdateManager;->a(Ljava/lang/ref/WeakReference;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask$2;->b:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    iget-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask$2;->a:Lorg/json/JSONArray;

    invoke-static {v0, v1}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->a(Lnet/hockeyapp/android/tasks/CheckUpdateTask;Lorg/json/JSONArray;)V

    .line 316
    :goto_0
    return-void

    .line 314
    :cond_1
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask$2;->b:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    iget-object v1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTask$2;->a:Lorg/json/JSONArray;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->a(Lnet/hockeyapp/android/tasks/CheckUpdateTask;Lorg/json/JSONArray;Ljava/lang/Boolean;)V

    goto :goto_0
.end method
