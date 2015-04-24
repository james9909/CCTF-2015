.class public Lcom/googlecode/mp4parser/authoring/TrackMetaData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Ljava/util/Date;

.field private d:Ljava/util/Date;

.field private e:Lcom/googlecode/mp4parser/util/Matrix;

.field private f:J

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "eng"

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->a:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->c:Ljava/util/Date;

    .line 29
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->d:Ljava/util/Date;

    .line 30
    sget-object v0, Lcom/googlecode/mp4parser/util/Matrix;->j:Lcom/googlecode/mp4parser/util/Matrix;

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->e:Lcom/googlecode/mp4parser/util/Matrix;

    .line 34
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->f:J

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->g:I

    .line 25
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->b:J

    return-wide v0
.end method

.method public a(J)V
    .locals 1
    .parameter

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->b:J

    .line 59
    return-void
.end method

.method public a(Ljava/util/Date;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->c:Ljava/util/Date;

    .line 67
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->f:J

    return-wide v0
.end method

.method public b(Ljava/util/Date;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->d:Ljava/util/Date;

    .line 75
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 135
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
