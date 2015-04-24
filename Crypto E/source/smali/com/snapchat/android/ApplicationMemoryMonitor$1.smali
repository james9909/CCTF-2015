.class Lcom/snapchat/android/ApplicationMemoryMonitor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ApplicationMemoryMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ApplicationMemoryMonitor;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ApplicationMemoryMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/snapchat/android/ApplicationMemoryMonitor$1;->a:Lcom/snapchat/android/ApplicationMemoryMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    return-void
.end method

.method public onLowMemory()V
    .locals 3

    .prologue
    .line 45
    const-string v0, "ApplicationMemoryMonitor"

    const-string v1, "onLowMemory"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/snapchat/android/ApplicationMemoryMonitor$1;->a:Lcom/snapchat/android/ApplicationMemoryMonitor;

    invoke-static {v0}, Lcom/snapchat/android/ApplicationMemoryMonitor;->a(Lcom/snapchat/android/ApplicationMemoryMonitor;)Lcom/snapchat/android/util/bitmap/BitmapPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/util/bitmap/BitmapPool;->b()V

    .line 47
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 5
    .parameter

    .prologue
    .line 35
    const-string v0, "ApplicationMemoryMonitor"

    const-string v1, "onTrimMemory %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/snapchat/android/ApplicationMemoryMonitor;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    return-void
.end method
