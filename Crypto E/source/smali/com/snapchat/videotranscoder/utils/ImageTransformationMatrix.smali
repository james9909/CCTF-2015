.class public Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->a:[F

    .line 42
    return-void
.end method


# virtual methods
.method public a()[F
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 50
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->a:[F

    const/high16 v2, 0x4334

    const/high16 v3, 0x3f80

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 51
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->a:[F

    const/high16 v2, -0x4080

    invoke-static {v0, v1, v4, v2, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 52
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->a:[F

    return-object v0
.end method

.method public b()[F
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 63
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->a:[F

    const/high16 v2, 0x4334

    const/high16 v4, 0x3f80

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 64
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->a:[F

    const/high16 v2, -0x4080

    invoke-static {v0, v1, v2, v3, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 65
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->a:[F

    return-object v0
.end method

.method public c()[F
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->a()[F

    move-result-object v0

    const/high16 v2, 0x42b4

    const/high16 v5, 0x3f80

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 70
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->a:[F

    const/high16 v2, -0x4080

    invoke-static {v0, v1, v3, v2, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 71
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->a:[F

    return-object v0
.end method

.method public d()[F
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->a()[F

    move-result-object v0

    const/high16 v2, 0x4387

    const/high16 v5, 0x3f80

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 76
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->a:[F

    const/high16 v2, -0x4080

    invoke-static {v0, v1, v2, v3, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 77
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->a:[F

    return-object v0
.end method
