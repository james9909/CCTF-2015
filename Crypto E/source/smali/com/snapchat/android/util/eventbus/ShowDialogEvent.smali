.class public Lcom/snapchat/android/util/eventbus/ShowDialogEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;,
        Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

.field public e:Lcom/snapchat/android/util/AlertDialogUtils$YesNoAlertListener;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p2, p0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->b:I

    .line 24
    iput-object p1, p0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->d:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p2, p0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->a:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->d:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    .line 20
    return-void
.end method
