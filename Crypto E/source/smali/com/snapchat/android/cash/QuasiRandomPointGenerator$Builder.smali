.class public Lcom/snapchat/android/cash/QuasiRandomPointGenerator$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/cash/QuasiRandomPointGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/cash/QuasiRandomPointGenerator$Builder;)I
    .locals 1
    .parameter

    .prologue
    .line 70
    iget v0, p0, Lcom/snapchat/android/cash/QuasiRandomPointGenerator$Builder;->a:I

    return v0
.end method

.method static synthetic b(Lcom/snapchat/android/cash/QuasiRandomPointGenerator$Builder;)I
    .locals 1
    .parameter

    .prologue
    .line 70
    iget v0, p0, Lcom/snapchat/android/cash/QuasiRandomPointGenerator$Builder;->b:I

    return v0
.end method

.method static synthetic c(Lcom/snapchat/android/cash/QuasiRandomPointGenerator$Builder;)I
    .locals 1
    .parameter

    .prologue
    .line 70
    iget v0, p0, Lcom/snapchat/android/cash/QuasiRandomPointGenerator$Builder;->c:I

    return v0
.end method


# virtual methods
.method public a(I)Lcom/snapchat/android/cash/QuasiRandomPointGenerator$Builder;
    .locals 0
    .parameter

    .prologue
    .line 76
    iput p1, p0, Lcom/snapchat/android/cash/QuasiRandomPointGenerator$Builder;->a:I

    .line 77
    return-object p0
.end method

.method public a()Lcom/snapchat/android/cash/QuasiRandomPointGenerator;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Lcom/snapchat/android/cash/QuasiRandomPointGenerator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/cash/QuasiRandomPointGenerator;-><init>(Lcom/snapchat/android/cash/QuasiRandomPointGenerator$Builder;Lcom/snapchat/android/cash/QuasiRandomPointGenerator$1;)V

    return-object v0
.end method

.method public b(I)Lcom/snapchat/android/cash/QuasiRandomPointGenerator$Builder;
    .locals 0
    .parameter

    .prologue
    .line 81
    iput p1, p0, Lcom/snapchat/android/cash/QuasiRandomPointGenerator$Builder;->b:I

    .line 82
    return-object p0
.end method

.method public c(I)Lcom/snapchat/android/cash/QuasiRandomPointGenerator$Builder;
    .locals 0
    .parameter

    .prologue
    .line 86
    iput p1, p0, Lcom/snapchat/android/cash/QuasiRandomPointGenerator$Builder;->c:I

    .line 87
    return-object p0
.end method
