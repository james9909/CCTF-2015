.class public abstract Lorg/joda/time/base/BaseDuration;
.super Lorg/joda/time/base/AbstractDuration;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/joda/time/ReadableDuration;


# instance fields
.field private volatile a:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/joda/time/base/AbstractDuration;-><init>()V

    .line 62
    iput-wide p1, p0, Lorg/joda/time/base/BaseDuration;->a:J

    .line 63
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lorg/joda/time/base/BaseDuration;->a:J

    return-wide v0
.end method
