.class public Lorg/joda/time/YearMonth$Property;
.super Lorg/joda/time/field/AbstractPartialFieldProperty;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/YearMonth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Property"
.end annotation


# instance fields
.field private final a:Lorg/joda/time/YearMonth;

.field private final b:I


# virtual methods
.method public a()Lorg/joda/time/DateTimeField;
    .locals 2

    .prologue
    .line 864
    iget-object v0, p0, Lorg/joda/time/YearMonth$Property;->a:Lorg/joda/time/YearMonth;

    iget v1, p0, Lorg/joda/time/YearMonth$Property;->b:I

    invoke-virtual {v0, v1}, Lorg/joda/time/YearMonth;->c(I)Lorg/joda/time/DateTimeField;

    move-result-object v0

    return-object v0
.end method

.method protected b()Lorg/joda/time/ReadablePartial;
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lorg/joda/time/YearMonth$Property;->a:Lorg/joda/time/YearMonth;

    return-object v0
.end method

.method public c()I
    .locals 2

    .prologue
    .line 891
    iget-object v0, p0, Lorg/joda/time/YearMonth$Property;->a:Lorg/joda/time/YearMonth;

    iget v1, p0, Lorg/joda/time/YearMonth$Property;->b:I

    invoke-virtual {v0, v1}, Lorg/joda/time/YearMonth;->a(I)I

    move-result v0

    return v0
.end method
