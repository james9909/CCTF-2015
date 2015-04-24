.class Lnet/simonvt/numberpicker/SnapchatTimePicker$ChangeCurrentByOneFromLongPressCommand;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/simonvt/numberpicker/SnapchatTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field final synthetic a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

.field private b:Z


# direct methods
.method constructor <init>(Lnet/simonvt/numberpicker/SnapchatTimePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1941
    iput-object p1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$ChangeCurrentByOneFromLongPressCommand;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lnet/simonvt/numberpicker/SnapchatTimePicker$ChangeCurrentByOneFromLongPressCommand;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1941
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/SnapchatTimePicker$ChangeCurrentByOneFromLongPressCommand;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1945
    iput-boolean p1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$ChangeCurrentByOneFromLongPressCommand;->b:Z

    .line 1946
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1950
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$ChangeCurrentByOneFromLongPressCommand;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    iget-boolean v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$ChangeCurrentByOneFromLongPressCommand;->b:Z

    invoke-static {v0, v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(Lnet/simonvt/numberpicker/SnapchatTimePicker;Z)V

    .line 1951
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$ChangeCurrentByOneFromLongPressCommand;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$ChangeCurrentByOneFromLongPressCommand;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->f(Lnet/simonvt/numberpicker/SnapchatTimePicker;)J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1952
    return-void
.end method
