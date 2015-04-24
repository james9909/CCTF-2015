.class Lnet/simonvt/numberpicker/SnapchatTimePicker$SupportAccessibilityNodeProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/simonvt/numberpicker/SnapchatTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SupportAccessibilityNodeProvider"
.end annotation


# instance fields
.field a:Lnet/simonvt/numberpicker/SnapchatTimePicker$AccessibilityNodeProviderImpl;

.field final synthetic b:Lnet/simonvt/numberpicker/SnapchatTimePicker;


# direct methods
.method private constructor <init>(Lnet/simonvt/numberpicker/SnapchatTimePicker;)V
    .locals 2
    .parameter

    .prologue
    .line 1974
    iput-object p1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$SupportAccessibilityNodeProvider;->b:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1975
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1976
    new-instance v0, Lnet/simonvt/numberpicker/SnapchatTimePicker$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p1}, Lnet/simonvt/numberpicker/SnapchatTimePicker$AccessibilityNodeProviderImpl;-><init>(Lnet/simonvt/numberpicker/SnapchatTimePicker;)V

    iput-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$SupportAccessibilityNodeProvider;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker$AccessibilityNodeProviderImpl;

    .line 1978
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lnet/simonvt/numberpicker/SnapchatTimePicker;Lnet/simonvt/numberpicker/SnapchatTimePicker$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1970
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/SnapchatTimePicker$SupportAccessibilityNodeProvider;-><init>(Lnet/simonvt/numberpicker/SnapchatTimePicker;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1989
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$SupportAccessibilityNodeProvider;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker$AccessibilityNodeProviderImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$SupportAccessibilityNodeProvider;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker$AccessibilityNodeProviderImpl;

    invoke-virtual {v0, p1, p2}, Lnet/simonvt/numberpicker/SnapchatTimePicker$AccessibilityNodeProviderImpl;->a(II)V

    .line 1990
    :cond_0
    return-void
.end method

.method public a(IILandroid/os/Bundle;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1981
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$SupportAccessibilityNodeProvider;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker$AccessibilityNodeProviderImpl;

    if-eqz v0, :cond_0

    .line 1982
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$SupportAccessibilityNodeProvider;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker$AccessibilityNodeProviderImpl;

    invoke-virtual {v0, p1, p2, p3}, Lnet/simonvt/numberpicker/SnapchatTimePicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    move-result v0

    .line 1985
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
