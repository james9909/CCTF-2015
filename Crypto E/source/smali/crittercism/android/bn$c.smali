.class public final Lcrittercism/android/bn$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/bm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/bn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcrittercism/android/bn$c;->a:Ljava/lang/String;

    .line 83
    invoke-static {}, Lcrittercism/android/bn;->a()Lcrittercism/android/at;

    .line 84
    invoke-static {}, Lcrittercism/android/bn;->a()Lcrittercism/android/at;

    move-result-object v0

    iget-object v0, v0, Lcrittercism/android/at;->a:Ljava/lang/String;

    iput-object v0, p0, Lcrittercism/android/bn$c;->a:Ljava/lang/String;

    .line 85
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string v0, "app_version"

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcrittercism/android/bn$c;->a:Ljava/lang/String;

    return-object v0
.end method
