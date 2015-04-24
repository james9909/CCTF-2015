.class Lnet/simonvt/numberpicker/SnapchatTimePicker$SelectTimeCommand;
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
    name = "SelectTimeCommand"
.end annotation


# instance fields
.field final synthetic a:Lnet/simonvt/numberpicker/SnapchatTimePicker;


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1961
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$SelectTimeCommand;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->g(Lnet/simonvt/numberpicker/SnapchatTimePicker;)Lnet/simonvt/numberpicker/SnapchatTimePicker$OnTimeSelectedListener;

    move-result-object v0

    invoke-interface {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker$OnTimeSelectedListener;->a()V

    .line 1962
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$SelectTimeCommand;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->d(Lnet/simonvt/numberpicker/SnapchatTimePicker;Z)Z

    .line 1963
    return-void
.end method
