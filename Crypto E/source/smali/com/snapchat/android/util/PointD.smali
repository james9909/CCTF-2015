.class public Lcom/snapchat/android/util/PointD;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:D

.field private b:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-wide v0, p0, Lcom/snapchat/android/util/PointD;->a:D

    .line 12
    iput-wide v0, p0, Lcom/snapchat/android/util/PointD;->b:D

    .line 13
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide p1, p0, Lcom/snapchat/android/util/PointD;->a:D

    .line 17
    iput-wide p3, p0, Lcom/snapchat/android/util/PointD;->b:D

    .line 18
    return-void
.end method


# virtual methods
.method public a()D
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/snapchat/android/util/PointD;->a:D

    return-wide v0
.end method

.method public b()D
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/snapchat/android/util/PointD;->b:D

    return-wide v0
.end method
