.class public Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/media/MediaFormat;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/media/MediaFormat;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;->a:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;->b:Landroid/media/MediaFormat;

    .line 15
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Landroid/media/MediaFormat;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;->b:Landroid/media/MediaFormat;

    return-object v0
.end method
