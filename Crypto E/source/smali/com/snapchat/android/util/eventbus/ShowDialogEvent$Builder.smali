.class public Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/eventbus/ShowDialogEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

.field private e:Lcom/snapchat/android/util/AlertDialogUtils$YesNoAlertListener;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;->d:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    .line 36
    return-void
.end method


# virtual methods
.method public a(I)Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 39
    iput p1, p0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;->b:I

    .line 40
    return-object p0
.end method

.method public a(Lcom/snapchat/android/util/AlertDialogUtils$YesNoAlertListener;)Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;->e:Lcom/snapchat/android/util/AlertDialogUtils$YesNoAlertListener;

    .line 55
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;->c:Ljava/lang/String;

    .line 45
    return-object p0
.end method

.method public a()Lcom/snapchat/android/util/eventbus/ShowDialogEvent;
    .locals 3

    .prologue
    .line 59
    new-instance v0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    iget-object v1, p0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;->d:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    iget v2, p0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;->b:I

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V

    .line 60
    iget-object v1, p0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->a:Ljava/lang/String;

    .line 61
    iget v1, p0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;->a:I

    iput v1, v0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->c:I

    .line 62
    iget-object v1, p0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;->e:Lcom/snapchat/android/util/AlertDialogUtils$YesNoAlertListener;

    iput-object v1, v0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->e:Lcom/snapchat/android/util/AlertDialogUtils$YesNoAlertListener;

    .line 63
    return-object v0
.end method

.method public b(I)Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;
    .locals 0
    .parameter

    .prologue
    .line 49
    iput p1, p0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;->a:I

    .line 50
    return-object p0
.end method
