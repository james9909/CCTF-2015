.class public final Lorg/joda/time/LocalDateTime$Property;
.super Lorg/joda/time/field/AbstractReadableInstantFieldProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/LocalDateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Property"
.end annotation


# instance fields
.field private transient a:Lorg/joda/time/LocalDateTime;

.field private transient b:Lorg/joda/time/DateTimeField;


# virtual methods
.method public a()Lorg/joda/time/DateTimeField;
    .locals 1

    .prologue
    .line 2184
    iget-object v0, p0, Lorg/joda/time/LocalDateTime$Property;->b:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method protected b()J
    .locals 2

    .prologue
    .line 2193
    iget-object v0, p0, Lorg/joda/time/LocalDateTime$Property;->a:Lorg/joda/time/LocalDateTime;

    invoke-virtual {v0}, Lorg/joda/time/LocalDateTime;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method protected c()Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 2203
    iget-object v0, p0, Lorg/joda/time/LocalDateTime$Property;->a:Lorg/joda/time/LocalDateTime;

    invoke-virtual {v0}, Lorg/joda/time/LocalDateTime;->c()Lorg/joda/time/Chronology;

    move-result-object v0

    return-object v0
.end method