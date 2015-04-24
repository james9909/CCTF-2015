.class public final Lcrittercism/android/ay$8;
.super Lcrittercism/android/cq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcrittercism/android/bt;

.field final synthetic b:Lcrittercism/android/ay;


# direct methods
.method public constructor <init>(Lcrittercism/android/ay;Lcrittercism/android/bt;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, Lcrittercism/android/ay$8;->b:Lcrittercism/android/ay;

    iput-object p2, p0, Lcrittercism/android/ay$8;->a:Lcrittercism/android/bt;

    invoke-direct {p0}, Lcrittercism/android/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lcrittercism/android/ay$8;->b:Lcrittercism/android/ay;

    iget-object v0, v0, Lcrittercism/android/ay;->l:Lcrittercism/android/bj;

    iget-object v1, p0, Lcrittercism/android/ay$8;->a:Lcrittercism/android/bt;

    invoke-virtual {v0, v1}, Lcrittercism/android/bj;->a(Lcrittercism/android/bv;)Z

    .line 487
    return-void
.end method
