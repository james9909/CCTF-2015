.class final Lcom/google/android/gms/common/internal/j$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/j$a$a;
    }
.end annotation


# instance fields
.field private UA:Landroid/content/ComponentName;

.field final synthetic UB:Lcom/google/android/gms/common/internal/j;

.field private final Uv:Ljava/lang/String;

.field private final Uw:Lcom/google/android/gms/common/internal/j$a$a;

.field private final Ux:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/common/internal/h",
            "<*>.f;>;"
        }
    .end annotation
.end field

.field private Uy:Z

.field private Uz:Landroid/os/IBinder;

.field private mState:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/j;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/j$a;->UB:Lcom/google/android/gms/common/internal/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/internal/j$a;->Uv:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/common/internal/j$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/j$a$a;-><init>(Lcom/google/android/gms/common/internal/j$a;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/j$a;->Uw:Lcom/google/android/gms/common/internal/j$a$a;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/j$a;->Ux:Ljava/util/HashSet;

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/internal/j$a;->mState:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/j$a;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/common/internal/j$a;->mState:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/j$a;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/j$a;->UA:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/j$a;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/j$a;->Uz:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/j$a;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/j$a;->Ux:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/internal/h$f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/h",
            "<*>.f;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/j$a;->Ux:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/google/android/gms/common/internal/h$f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/h",
            "<*>.f;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/j$a;->Ux:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Lcom/google/android/gms/common/internal/h$f;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/h",
            "<*>.f;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/j$a;->Ux:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/j$a;->Uz:Landroid/os/IBinder;

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/j$a;->UA:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/internal/j$a;->mState:I

    return v0
.end method

.method public isBound()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/j$a;->Uy:Z

    return v0
.end method

.method public jK()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/j$a;->Uv:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/j$a;->UB:Lcom/google/android/gms/common/internal/j;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/j;->b(Lcom/google/android/gms/common/internal/j;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/j$a;->Uw:Lcom/google/android/gms/common/internal/j$a$a;

    const/16 v3, 0x81

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/j$a;->Uy:Z

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/j$a;->Uy:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/common/internal/j$a;->mState:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/j$a;->UB:Lcom/google/android/gms/common/internal/j;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/j;->b(Lcom/google/android/gms/common/internal/j;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/j$a;->Uw:Lcom/google/android/gms/common/internal/j$a$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0
.end method

.method public jL()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/j$a;->UB:Lcom/google/android/gms/common/internal/j;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/j;->b(Lcom/google/android/gms/common/internal/j;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/j$a;->Uw:Lcom/google/android/gms/common/internal/j$a$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/j$a;->Uy:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/internal/j$a;->mState:I

    return-void
.end method

.method public jM()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/j$a;->Uv:Ljava/lang/String;

    return-object v0
.end method

.method public jN()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/j$a;->Ux:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    return v0
.end method
