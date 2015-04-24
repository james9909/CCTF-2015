.class public Lcrittercism/android/ci;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/cg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrittercism/android/ci$a;
    }
.end annotation


# instance fields
.field private a:Lcrittercism/android/bj;

.field private b:Lcrittercism/android/bj;


# direct methods
.method public constructor <init>(Lcrittercism/android/bj;Lcrittercism/android/bj;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcrittercism/android/ci;->a:Lcrittercism/android/bj;

    .line 32
    iput-object p2, p0, Lcrittercism/android/ci;->b:Lcrittercism/android/bj;

    .line 33
    return-void
.end method


# virtual methods
.method public a(ZILorg/json/JSONObject;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    if-nez p1, :cond_0

    const/16 v0, 0xc8

    if-lt p2, v0, :cond_1

    const/16 v0, 0x12c

    if-ge p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 41
    iget-object v0, p0, Lcrittercism/android/ci;->a:Lcrittercism/android/bj;

    invoke-virtual {v0}, Lcrittercism/android/bj;->a()V

    .line 45
    :goto_1
    return-void

    .line 40
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 43
    :cond_2
    iget-object v0, p0, Lcrittercism/android/ci;->a:Lcrittercism/android/bj;

    iget-object v1, p0, Lcrittercism/android/ci;->b:Lcrittercism/android/bj;

    invoke-virtual {v0, v1}, Lcrittercism/android/bj;->a(Lcrittercism/android/bj;)V

    goto :goto_1
.end method
