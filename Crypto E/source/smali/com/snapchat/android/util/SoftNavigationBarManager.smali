.class public Lcom/snapchat/android/util/SoftNavigationBarManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final a:Lcom/snapchat/android/util/SoftNavigationBarManager;


# instance fields
.field private final b:Z

.field private c:Landroid/view/View;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/snapchat/android/util/SoftNavigationBarManager;

    invoke-direct {v0}, Lcom/snapchat/android/util/SoftNavigationBarManager;-><init>()V

    sput-object v0, Lcom/snapchat/android/util/SoftNavigationBarManager;->a:Lcom/snapchat/android/util/SoftNavigationBarManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/snapchat/android/util/SoftNavigationBarManager;-><init>(Z)V

    .line 29
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Z)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean p1, p0, Lcom/snapchat/android/util/SoftNavigationBarManager;->b:Z

    .line 34
    return-void
.end method

.method public static a()Lcom/snapchat/android/util/SoftNavigationBarManager;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/snapchat/android/util/SoftNavigationBarManager;->a:Lcom/snapchat/android/util/SoftNavigationBarManager;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/snapchat/android/util/SoftNavigationBarManager;->b:Z

    if-nez v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    iput-object p1, p0, Lcom/snapchat/android/util/SoftNavigationBarManager;->c:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/snapchat/android/util/SoftNavigationBarManager;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/util/SoftNavigationBarManager;->d:I

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/snapchat/android/util/SoftNavigationBarManager;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/util/SoftNavigationBarManager;->c:Landroid/view/View;

    if-nez v0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    const-string v0, "SoftNavigationBarManager"

    const-string v1, "Turning immersive mode ON"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/snapchat/android/util/SoftNavigationBarManager;->c:Landroid/view/View;

    const/16 v1, 0x1702

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/snapchat/android/util/SoftNavigationBarManager;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/util/SoftNavigationBarManager;->c:Landroid/view/View;

    if-nez v0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const-string v0, "SoftNavigationBarManager"

    const-string v1, "Turning immersive mode OFF"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/snapchat/android/util/SoftNavigationBarManager;->c:Landroid/view/View;

    iget v1, p0, Lcom/snapchat/android/util/SoftNavigationBarManager;->d:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method
