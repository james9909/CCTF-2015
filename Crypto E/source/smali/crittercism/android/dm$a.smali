.class final Lcrittercism/android/dm$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/dn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/dm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcrittercism/android/dm;


# direct methods
.method private constructor <init>(Lcrittercism/android/dm;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcrittercism/android/dm$a;->a:Lcrittercism/android/dm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcrittercism/android/dm;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcrittercism/android/dm$a;-><init>(Lcrittercism/android/dm;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Date;
    .locals 1

    .prologue
    .line 96
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method
