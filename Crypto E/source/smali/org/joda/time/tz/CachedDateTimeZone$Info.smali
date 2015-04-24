.class final Lorg/joda/time/tz/CachedDateTimeZone$Info;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/tz/CachedDateTimeZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Info"
.end annotation


# instance fields
.field public final a:J

.field public final b:Lorg/joda/time/DateTimeZone;

.field c:Lorg/joda/time/tz/CachedDateTimeZone$Info;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I


# direct methods
.method constructor <init>(Lorg/joda/time/DateTimeZone;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/high16 v0, -0x8000

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->e:I

    .line 178
    iput v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->f:I

    .line 181
    iput-wide p2, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->a:J

    .line 182
    iput-object p1, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->b:Lorg/joda/time/DateTimeZone;

    .line 183
    return-void
.end method


# virtual methods
.method public a(J)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->c:Lorg/joda/time/tz/CachedDateTimeZone$Info;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->c:Lorg/joda/time/tz/CachedDateTimeZone$Info;

    iget-wide v0, v0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->a:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 187
    :cond_0
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 188
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->b:Lorg/joda/time/DateTimeZone;

    iget-wide v2, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->a:J

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeZone;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->d:Ljava/lang/String;

    .line 190
    :cond_1
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->d:Ljava/lang/String;

    .line 192
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->c:Lorg/joda/time/tz/CachedDateTimeZone$Info;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/tz/CachedDateTimeZone$Info;->a(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b(J)I
    .locals 5
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->c:Lorg/joda/time/tz/CachedDateTimeZone$Info;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->c:Lorg/joda/time/tz/CachedDateTimeZone$Info;

    iget-wide v0, v0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->a:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 197
    :cond_0
    iget v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->e:I

    const/high16 v1, -0x8000

    if-ne v0, v1, :cond_1

    .line 198
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->b:Lorg/joda/time/DateTimeZone;

    iget-wide v2, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->a:J

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeZone;->b(J)I

    move-result v0

    iput v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->e:I

    .line 200
    :cond_1
    iget v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->e:I

    .line 202
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->c:Lorg/joda/time/tz/CachedDateTimeZone$Info;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/tz/CachedDateTimeZone$Info;->b(J)I

    move-result v0

    goto :goto_0
.end method
