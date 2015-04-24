.class final Lcrittercism/android/ay$10;
.super Lcrittercism/android/cq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcrittercism/android/ay;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcrittercism/android/ay;


# direct methods
.method constructor <init>(Lcrittercism/android/ay;)V
    .locals 0
    .parameter

    .prologue
    .line 828
    iput-object p1, p0, Lcrittercism/android/ay$10;->a:Lcrittercism/android/ay;

    invoke-direct {p0}, Lcrittercism/android/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 830
    iget-object v0, p0, Lcrittercism/android/ay$10;->a:Lcrittercism/android/ay;

    iget-object v0, v0, Lcrittercism/android/ay;->g:Lcrittercism/android/df;

    invoke-virtual {v0}, Lcrittercism/android/df;->a()Lcrittercism/android/dc;

    move-result-object v0

    sget-object v1, Lcrittercism/android/ay;->a:Lcrittercism/android/ay;

    sget-object v2, Lcrittercism/android/cb;->h:Lcrittercism/android/cb;

    invoke-virtual {v2}, Lcrittercism/android/cb;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcrittercism/android/cb;->h:Lcrittercism/android/cb;

    invoke-virtual {v3}, Lcrittercism/android/cb;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcrittercism/android/dc;->a(Lcrittercism/android/aw;Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    return-void
.end method
