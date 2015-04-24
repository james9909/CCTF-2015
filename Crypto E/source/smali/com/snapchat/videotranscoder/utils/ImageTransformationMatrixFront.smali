.class public Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrixFront;
.super Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[F
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 31
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrixFront;->a:[F

    const/4 v1, 0x0

    const/high16 v5, 0x3f80

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 32
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrixFront;->a:[F

    return-object v0
.end method

.method public b()[F
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/high16 v6, -0x4080

    const/4 v3, 0x0

    .line 24
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrixFront;->a:[F

    const/high16 v2, 0x4334

    const/high16 v5, 0x3f80

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 25
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrixFront;->a:[F

    invoke-static {v0, v1, v6, v6, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 26
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrixFront;->a:[F

    return-object v0
.end method

.method public c()[F
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 17
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrixFront;->a:[F

    const/high16 v2, 0x42b4

    const/high16 v5, 0x3f80

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 18
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrixFront;->a:[F

    const/high16 v2, -0x4080

    invoke-static {v0, v1, v3, v2, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 19
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrixFront;->a:[F

    return-object v0
.end method

.method public d()[F
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 10
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrixFront;->a:[F

    const/high16 v2, 0x4387

    const/high16 v5, 0x3f80

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 11
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrixFront;->a:[F

    const/high16 v2, -0x4080

    invoke-static {v0, v1, v2, v3, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 12
    iget-object v0, p0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrixFront;->a:[F

    return-object v0
.end method
