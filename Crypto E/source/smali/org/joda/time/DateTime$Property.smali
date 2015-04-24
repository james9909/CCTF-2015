.class public final Lorg/joda/time/DateTime$Property;
.super Lorg/joda/time/field/AbstractReadableInstantFieldProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/DateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Property"
.end annotation


# instance fields
.field private a:Lorg/joda/time/DateTime;

.field private b:Lorg/joda/time/DateTimeField;


# direct methods
.method constructor <init>(Lorg/joda/time/DateTime;Lorg/joda/time/DateTimeField;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2047
    invoke-direct {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;-><init>()V

    .line 2048
    iput-object p1, p0, Lorg/joda/time/DateTime$Property;->a:Lorg/joda/time/DateTime;

    .line 2049
    iput-object p2, p0, Lorg/joda/time/DateTime$Property;->b:Lorg/joda/time/DateTimeField;

    .line 2050
    return-void
.end method


# virtual methods
.method public a()Lorg/joda/time/DateTimeField;
    .locals 1

    .prologue
    .line 2076
    iget-object v0, p0, Lorg/joda/time/DateTime$Property;->b:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method protected b()J
    .locals 2

    .prologue
    .line 2085
    iget-object v0, p0, Lorg/joda/time/DateTime$Property;->a:Lorg/joda/time/DateTime;

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->x_()J

    move-result-wide v0

    return-wide v0
.end method

.method protected c()Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 2095
    iget-object v0, p0, Lorg/joda/time/DateTime$Property;->a:Lorg/joda/time/DateTime;

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->d()Lorg/joda/time/Chronology;

    move-result-object v0

    return-object v0
.end method
