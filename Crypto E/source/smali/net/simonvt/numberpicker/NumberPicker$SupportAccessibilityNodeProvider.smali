.class Lnet/simonvt/numberpicker/NumberPicker$SupportAccessibilityNodeProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/simonvt/numberpicker/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SupportAccessibilityNodeProvider"
.end annotation


# instance fields
.field a:Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;

.field final synthetic b:Lnet/simonvt/numberpicker/NumberPicker;


# direct methods
.method private constructor <init>(Lnet/simonvt/numberpicker/NumberPicker;)V
    .locals 2
    .parameter

    .prologue
    .line 2211
    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$SupportAccessibilityNodeProvider;->b:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2212
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2213
    new-instance v0, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p1}, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;-><init>(Lnet/simonvt/numberpicker/NumberPicker;)V

    iput-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$SupportAccessibilityNodeProvider;->a:Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;

    .line 2215
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lnet/simonvt/numberpicker/NumberPicker;Lnet/simonvt/numberpicker/NumberPicker$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2207
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/NumberPicker$SupportAccessibilityNodeProvider;-><init>(Lnet/simonvt/numberpicker/NumberPicker;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2226
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$SupportAccessibilityNodeProvider;->a:Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$SupportAccessibilityNodeProvider;->a:Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;

    invoke-virtual {v0, p1, p2}, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->a(II)V

    .line 2227
    :cond_0
    return-void
.end method

.method public a(IILandroid/os/Bundle;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2218
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$SupportAccessibilityNodeProvider;->a:Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;

    if-eqz v0, :cond_0

    .line 2219
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$SupportAccessibilityNodeProvider;->a:Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;

    invoke-virtual {v0, p1, p2, p3}, Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    move-result v0

    .line 2222
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
