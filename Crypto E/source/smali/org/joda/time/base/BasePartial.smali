.class public abstract Lorg/joda/time/base/BasePartial;
.super Lorg/joda/time/base/AbstractPartial;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/joda/time/ReadablePartial;


# instance fields
.field private final a:Lorg/joda/time/Chronology;

.field private final b:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 65
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->a()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/joda/time/base/BasePartial;-><init>(JLorg/joda/time/Chronology;)V

    .line 66
    return-void
.end method

.method protected constructor <init>(JLorg/joda/time/Chronology;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lorg/joda/time/base/AbstractPartial;-><init>()V

    .line 109
    invoke-static {p3}, Lorg/joda/time/DateTimeUtils;->a(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->b()Lorg/joda/time/Chronology;

    move-result-object v1

    iput-object v1, p0, Lorg/joda/time/base/BasePartial;->a:Lorg/joda/time/Chronology;

    .line 111
    invoke-virtual {v0, p0, p1, p2}, Lorg/joda/time/Chronology;->a(Lorg/joda/time/ReadablePartial;J)[I

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BasePartial;->b:[I

    .line 112
    return-void
.end method

.method public constructor <init>([ILorg/joda/time/Chronology;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 180
    invoke-direct {p0}, Lorg/joda/time/base/AbstractPartial;-><init>()V

    .line 181
    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->a(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->b()Lorg/joda/time/Chronology;

    move-result-object v1

    iput-object v1, p0, Lorg/joda/time/base/BasePartial;->a:Lorg/joda/time/Chronology;

    .line 183
    invoke-virtual {v0, p0, p1}, Lorg/joda/time/Chronology;->a(Lorg/joda/time/ReadablePartial;[I)V

    .line 184
    iput-object p1, p0, Lorg/joda/time/base/BasePartial;->b:[I

    .line 185
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1
    .parameter

    .prologue
    .line 225
    iget-object v0, p0, Lorg/joda/time/base/BasePartial;->b:[I

    aget v0, v0, p1

    return v0
.end method

.method public c()Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lorg/joda/time/base/BasePartial;->a:Lorg/joda/time/Chronology;

    return-object v0
.end method
