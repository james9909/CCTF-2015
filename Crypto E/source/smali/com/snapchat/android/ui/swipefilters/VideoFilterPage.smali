.class public Lcom/snapchat/android/ui/swipefilters/VideoFilterPage;
.super Lcom/snapchat/android/ui/swipefilters/FilterPage;
.source "SourceFile"


# instance fields
.field private b:Lcom/snapchat/videotranscoder/video/ShaderText$Type;


# direct methods
.method public constructor <init>(Lcom/snapchat/videotranscoder/video/ShaderText$Type;)V
    .locals 0
    .parameter

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/snapchat/android/ui/swipefilters/FilterPage;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/snapchat/android/ui/swipefilters/VideoFilterPage;->b:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    .line 12
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Shader type is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/swipefilters/VideoFilterPage;->b:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/video/ShaderText$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/snapchat/android/ui/swipefilters/FilterPageType;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->d:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    return-object v0
.end method

.method public f()Lcom/snapchat/videotranscoder/video/ShaderText$Type;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/snapchat/android/ui/swipefilters/VideoFilterPage;->b:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    return-object v0
.end method
