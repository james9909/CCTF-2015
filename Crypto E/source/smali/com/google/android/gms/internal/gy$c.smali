.class Lcom/google/android/gms/internal/gy$c;
.super Lcom/google/android/gms/internal/gy$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/gy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gy$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/ComponentCallbacks;)Z
    .locals 1

    invoke-virtual {p1, p2}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroid/content/Context;Landroid/content/ComponentCallbacks;)Z
    .locals 1

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    const/4 v0, 0x1

    return v0
.end method

.method public c(Lcom/google/android/gms/internal/hk;)Landroid/webkit/WebChromeClient;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/hq;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/hq;-><init>(Lcom/google/android/gms/internal/hk;)V

    return-object v0
.end method
