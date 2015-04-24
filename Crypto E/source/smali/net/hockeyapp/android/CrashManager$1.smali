.class final Lnet/hockeyapp/android/CrashManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/CrashManager;->c(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/hockeyapp/android/CrashManagerListener;

.field final synthetic b:Ljava/lang/ref/WeakReference;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/CrashManagerListener;Ljava/lang/ref/WeakReference;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lnet/hockeyapp/android/CrashManager$1;->a:Lnet/hockeyapp/android/CrashManagerListener;

    iput-object p2, p0, Lnet/hockeyapp/android/CrashManager$1;->b:Ljava/lang/ref/WeakReference;

    iput-boolean p3, p0, Lnet/hockeyapp/android/CrashManager$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 366
    iget-object v0, p0, Lnet/hockeyapp/android/CrashManager$1;->a:Lnet/hockeyapp/android/CrashManagerListener;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lnet/hockeyapp/android/CrashManager$1;->a:Lnet/hockeyapp/android/CrashManagerListener;

    invoke-virtual {v0}, Lnet/hockeyapp/android/CrashManagerListener;->n()V

    .line 370
    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/CrashManager$1;->b:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lnet/hockeyapp/android/CrashManager;->b(Ljava/lang/ref/WeakReference;)V

    .line 371
    iget-object v0, p0, Lnet/hockeyapp/android/CrashManager$1;->b:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lnet/hockeyapp/android/CrashManager$1;->a:Lnet/hockeyapp/android/CrashManagerListener;

    iget-boolean v2, p0, Lnet/hockeyapp/android/CrashManager$1;->c:Z

    invoke-static {v0, v1, v2}, Lnet/hockeyapp/android/CrashManager;->a(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    .line 372
    return-void
.end method
