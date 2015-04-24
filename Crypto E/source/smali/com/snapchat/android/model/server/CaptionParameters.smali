.class public Lcom/snapchat/android/model/server/CaptionParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mOrientation:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "orientation"
    .end annotation
.end field

.field private mPosition:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "position"
    .end annotation
.end field

.field private mText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "text"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JD)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/snapchat/android/model/server/CaptionParameters;->mText:Ljava/lang/String;

    .line 20
    iput-wide p2, p0, Lcom/snapchat/android/model/server/CaptionParameters;->mOrientation:J

    .line 21
    iput-wide p4, p0, Lcom/snapchat/android/model/server/CaptionParameters;->mPosition:D

    .line 22
    return-void
.end method


# virtual methods
.method public getOrientation()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/snapchat/android/model/server/CaptionParameters;->mOrientation:J

    return-wide v0
.end method

.method public getPosition()D
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/snapchat/android/model/server/CaptionParameters;->mPosition:D

    return-wide v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/snapchat/android/model/server/CaptionParameters;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public setOrientation(J)V
    .locals 1
    .parameter

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/snapchat/android/model/server/CaptionParameters;->mOrientation:J

    .line 38
    return-void
.end method

.method public setPosition(D)V
    .locals 1
    .parameter

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/snapchat/android/model/server/CaptionParameters;->mPosition:D

    .line 46
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/snapchat/android/model/server/CaptionParameters;->mText:Ljava/lang/String;

    .line 30
    return-void
.end method
