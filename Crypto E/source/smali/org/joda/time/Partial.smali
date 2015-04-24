.class public final Lorg/joda/time/Partial;
.super Lorg/joda/time/base/AbstractPartial;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/joda/time/ReadablePartial;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/Partial$Property;
    }
.end annotation


# instance fields
.field private final a:Lorg/joda/time/Chronology;

.field private final b:[Lorg/joda/time/DateTimeFieldType;

.field private final c:[I

.field private transient d:[Lorg/joda/time/format/DateTimeFormatter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    check-cast v0, Lorg/joda/time/Chronology;

    invoke-direct {p0, v0}, Lorg/joda/time/Partial;-><init>(Lorg/joda/time/Chronology;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/Chronology;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Lorg/joda/time/base/AbstractPartial;-><init>()V

    .line 124
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->a(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->b()Lorg/joda/time/Chronology;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/Partial;->a:Lorg/joda/time/Chronology;

    .line 125
    new-array v0, v1, [Lorg/joda/time/DateTimeFieldType;

    iput-object v0, p0, Lorg/joda/time/Partial;->b:[Lorg/joda/time/DateTimeFieldType;

    .line 126
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/joda/time/Partial;->c:[I

    .line 127
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lorg/joda/time/Partial;->b:[Lorg/joda/time/DateTimeFieldType;

    array-length v0, v0

    return v0
.end method

.method public a(I)I
    .locals 1
    .parameter

    .prologue
    .line 368
    iget-object v0, p0, Lorg/joda/time/Partial;->c:[I

    aget v0, v0, p1

    return v0
.end method

.method protected a(ILorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 333
    iget-object v0, p0, Lorg/joda/time/Partial;->b:[Lorg/joda/time/DateTimeFieldType;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lorg/joda/time/DateTimeFieldType;->a(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lorg/joda/time/DateTimeFieldType;
    .locals 1
    .parameter

    .prologue
    .line 344
    iget-object v0, p0, Lorg/joda/time/Partial;->b:[Lorg/joda/time/DateTimeFieldType;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public b()Lorg/joda/time/format/DateTimeFormatter;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 704
    iget-object v0, p0, Lorg/joda/time/Partial;->d:[Lorg/joda/time/format/DateTimeFormatter;

    .line 705
    if-nez v0, :cond_2

    .line 706
    invoke-virtual {p0}, Lorg/joda/time/Partial;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 707
    const/4 v0, 0x0

    .line 721
    :goto_0
    return-object v0

    .line 709
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/joda/time/format/DateTimeFormatter;

    .line 711
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/joda/time/Partial;->b:[Lorg/joda/time/DateTimeFieldType;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 712
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lorg/joda/time/format/ISODateTimeFormat;->a(Ljava/util/Collection;ZZ)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v3

    aput-object v3, v0, v2

    .line 713
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 714
    const/4 v1, 0x1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    :cond_1
    :goto_1
    iput-object v0, p0, Lorg/joda/time/Partial;->d:[Lorg/joda/time/format/DateTimeFormatter;

    .line 721
    :cond_2
    aget-object v0, v0, v5

    goto :goto_0

    .line 716
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public c()Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lorg/joda/time/Partial;->a:Lorg/joda/time/Chronology;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 5

    .prologue
    .line 762
    invoke-virtual {p0}, Lorg/joda/time/Partial;->a()I

    move-result v1

    .line 763
    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v1, 0x14

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 764
    const/16 v0, 0x5b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 765
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 766
    if-lez v0, :cond_0

    .line 767
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 769
    :cond_0
    iget-object v3, p0, Lorg/joda/time/Partial;->b:[Lorg/joda/time/DateTimeFieldType;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/joda/time/DateTimeFieldType;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 771
    iget-object v3, p0, Lorg/joda/time/Partial;->c:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 765
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 773
    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 774
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 737
    iget-object v0, p0, Lorg/joda/time/Partial;->d:[Lorg/joda/time/format/DateTimeFormatter;

    .line 738
    if-nez v0, :cond_0

    .line 739
    invoke-virtual {p0}, Lorg/joda/time/Partial;->b()Lorg/joda/time/format/DateTimeFormatter;

    .line 740
    iget-object v0, p0, Lorg/joda/time/Partial;->d:[Lorg/joda/time/format/DateTimeFormatter;

    .line 741
    if-nez v0, :cond_0

    .line 742
    invoke-virtual {p0}, Lorg/joda/time/Partial;->d()Ljava/lang/String;

    move-result-object v0

    .line 749
    :goto_0
    return-object v0

    .line 745
    :cond_0
    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 746
    if-nez v0, :cond_1

    .line 747
    invoke-virtual {p0}, Lorg/joda/time/Partial;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 749
    :cond_1
    invoke-virtual {v0, p0}, Lorg/joda/time/format/DateTimeFormatter;->a(Lorg/joda/time/ReadablePartial;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
