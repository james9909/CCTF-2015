.class public abstract Lorg/joda/time/base/BaseInterval;
.super Lorg/joda/time/base/AbstractInterval;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/joda/time/ReadableInterval;


# instance fields
.field private volatile a:Lorg/joda/time/Chronology;

.field private volatile b:J

.field private volatile c:J


# direct methods
.method public constructor <init>(JJLorg/joda/time/Chronology;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/joda/time/base/AbstractInterval;-><init>()V

    .line 72
    invoke-static {p5}, Lorg/joda/time/DateTimeUtils;->a(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BaseInterval;->a:Lorg/joda/time/Chronology;

    .line 73
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/joda/time/base/BaseInterval;->a(JJ)V

    .line 74
    iput-wide p1, p0, Lorg/joda/time/base/BaseInterval;->b:J

    .line 75
    iput-wide p3, p0, Lorg/joda/time/base/BaseInterval;->c:J

    .line 76
    return-void
.end method


# virtual methods
.method public a()Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lorg/joda/time/base/BaseInterval;->a:Lorg/joda/time/Chronology;

    return-object v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 225
    iget-wide v0, p0, Lorg/joda/time/base/BaseInterval;->b:J

    return-wide v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 235
    iget-wide v0, p0, Lorg/joda/time/base/BaseInterval;->c:J

    return-wide v0
.end method
