.class public final Lorg/joda/time/DateMidnight$Property;
.super Lorg/joda/time/field/AbstractReadableInstantFieldProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/DateMidnight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Property"
.end annotation


# instance fields
.field private a:Lorg/joda/time/DateMidnight;

.field private b:Lorg/joda/time/DateTimeField;


# virtual methods
.method public a()Lorg/joda/time/DateTimeField;
    .locals 1

    .prologue
    .line 1265
    iget-object v0, p0, Lorg/joda/time/DateMidnight$Property;->b:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method protected b()J
    .locals 2

    .prologue
    .line 1274
    iget-object v0, p0, Lorg/joda/time/DateMidnight$Property;->a:Lorg/joda/time/DateMidnight;

    invoke-virtual {v0}, Lorg/joda/time/DateMidnight;->x_()J

    move-result-wide v0

    return-wide v0
.end method

.method protected c()Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 1284
    iget-object v0, p0, Lorg/joda/time/DateMidnight$Property;->a:Lorg/joda/time/DateMidnight;

    invoke-virtual {v0}, Lorg/joda/time/DateMidnight;->d()Lorg/joda/time/Chronology;

    move-result-object v0

    return-object v0
.end method
