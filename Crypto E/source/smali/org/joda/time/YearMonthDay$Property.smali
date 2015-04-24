.class public Lorg/joda/time/YearMonthDay$Property;
.super Lorg/joda/time/field/AbstractPartialFieldProperty;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/YearMonthDay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Property"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lorg/joda/time/YearMonthDay;

.field private final b:I


# virtual methods
.method public a()Lorg/joda/time/DateTimeField;
    .locals 2

    .prologue
    .line 961
    iget-object v0, p0, Lorg/joda/time/YearMonthDay$Property;->a:Lorg/joda/time/YearMonthDay;

    iget v1, p0, Lorg/joda/time/YearMonthDay$Property;->b:I

    invoke-virtual {v0, v1}, Lorg/joda/time/YearMonthDay;->c(I)Lorg/joda/time/DateTimeField;

    move-result-object v0

    return-object v0
.end method

.method protected b()Lorg/joda/time/ReadablePartial;
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Lorg/joda/time/YearMonthDay$Property;->a:Lorg/joda/time/YearMonthDay;

    return-object v0
.end method

.method public c()I
    .locals 2

    .prologue
    .line 988
    iget-object v0, p0, Lorg/joda/time/YearMonthDay$Property;->a:Lorg/joda/time/YearMonthDay;

    iget v1, p0, Lorg/joda/time/YearMonthDay$Property;->b:I

    invoke-virtual {v0, v1}, Lorg/joda/time/YearMonthDay;->a(I)I

    move-result v0

    return v0
.end method
