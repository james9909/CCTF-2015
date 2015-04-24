.class final Lcrittercism/android/ay$9;
.super Lcrittercism/android/cq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcrittercism/android/ay;->a(Lcrittercism/android/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcrittercism/android/c;

.field final synthetic b:Lcrittercism/android/ay;


# direct methods
.method constructor <init>(Lcrittercism/android/ay;Lcrittercism/android/c;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 497
    iput-object p1, p0, Lcrittercism/android/ay$9;->b:Lcrittercism/android/ay;

    iput-object p2, p0, Lcrittercism/android/ay$9;->a:Lcrittercism/android/c;

    invoke-direct {p0}, Lcrittercism/android/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcrittercism/android/ay$9;->b:Lcrittercism/android/ay;

    iget-object v0, v0, Lcrittercism/android/ay;->m:Lcrittercism/android/bj;

    iget-object v1, p0, Lcrittercism/android/ay$9;->a:Lcrittercism/android/c;

    invoke-virtual {v0, v1}, Lcrittercism/android/bj;->a(Lcrittercism/android/bv;)Z

    .line 500
    return-void
.end method
