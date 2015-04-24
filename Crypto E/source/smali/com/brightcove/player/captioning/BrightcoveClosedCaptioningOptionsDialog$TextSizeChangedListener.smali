.class public Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$TextSizeChangedListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextSizeChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;


# direct methods
.method protected constructor <init>(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 556
    iput-object p1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$TextSizeChangedListener;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTextSize(I)F
    .locals 6
    .parameter

    .prologue
    const/high16 v0, 0x3f80

    .line 565
    .line 567
    sget v1, Lcom/brightcove/player/R$id;->closed_captioning_options_text_size_50_percent:I

    if-ne p1, v1, :cond_1

    .line 568
    const/high16 v0, 0x3f00

    .line 579
    :cond_0
    :goto_0
    const-string v1, "TextSizeChangeListener"

    const-string v2, "sizeMultipler is %f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const/high16 v1, 0x4160

    mul-float/2addr v0, v1

    return v0

    .line 569
    :cond_1
    sget v1, Lcom/brightcove/player/R$id;->closed_captioning_options_text_size_75_percent:I

    if-ne p1, v1, :cond_2

    .line 570
    const/high16 v0, 0x3f40

    goto :goto_0

    .line 571
    :cond_2
    sget v1, Lcom/brightcove/player/R$id;->closed_captioning_options_text_size_100_percent:I

    if-eq p1, v1, :cond_0

    .line 573
    sget v1, Lcom/brightcove/player/R$id;->closed_captioning_options_text_size_150_percent:I

    if-ne p1, v1, :cond_3

    .line 574
    const/high16 v0, 0x3fc0

    goto :goto_0

    .line 575
    :cond_3
    sget v1, Lcom/brightcove/player/R$id;->closed_captioning_options_text_size_200_percent:I

    if-ne p1, v1, :cond_0

    .line 576
    const/high16 v0, 0x4000

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 559
    const-string v0, "TextSizeChangedListener"

    const-string v1, "Text Size %d selected"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$TextSizeChangedListener;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    #getter for: Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningStyleBuilder:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;
    invoke-static {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->access$200(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$TextSizeChangedListener;->getTextSize(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->setTextSize(F)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    .line 561
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$TextSizeChangedListener;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-virtual {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->updateCaptions()V

    .line 562
    return-void
.end method
