.class public Lcom/snapchat/android/api2/cash/CashErrorReporter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api2/cash/CashErrorReporter$1;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/CashTransaction;II)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 76
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->b:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;)V

    invoke-virtual {v1, p2}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;->b(I)Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;->a(I)Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;->a()Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public varargs a(Lcom/snapchat/android/model/CashTransaction;I[Ljava/lang/Object;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 67
    invoke-static {}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a()Lcom/snapchat/android/notification/AndroidNotificationManager;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;ZI[Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public a(Lcom/snapchat/android/model/CashTransaction;Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;)V
    .locals 8
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const v7, 0x7f0c014f

    const/4 v6, 0x0

    .line 25
    invoke-static {}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a()Lcom/snapchat/android/notification/AndroidNotificationManager;

    move-result-object v0

    .line 26
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    .line 27
    sget-object v2, Lcom/snapchat/android/api2/cash/CashErrorReporter$1;->$SwitchMap$com$snapchat$android$api2$cash$ScCashResponsePayload$Status:[I

    invoke-virtual {p2}, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 59
    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v6, v7, v2}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;ZI[Ljava/lang/Object;)V

    .line 64
    :goto_0
    return-void

    .line 29
    :pswitch_0
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->b:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;)V

    const v2, 0x7f0c0070

    invoke-virtual {v1, v2}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;->b(I)Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;

    move-result-object v1

    const v2, 0x7f0c006f

    invoke-virtual {v1, v2}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;->a(I)Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;->a()Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 35
    :pswitch_1
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->b:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;)V

    const v2, 0x7f0c021d

    invoke-virtual {v1, v2}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;->b(I)Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;

    move-result-object v1

    const v2, 0x7f0c021c

    invoke-virtual {v1, v2}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;->a(I)Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;->a()Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 41
    :pswitch_2
    const v2, 0x7f0c0151

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;ZI[Ljava/lang/Object;)V

    goto :goto_0

    .line 46
    :pswitch_3
    const v2, 0x7f0c014c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-virtual {v0, v1, v2, v6}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 50
    :pswitch_4
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v4, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->a:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    const v5, 0x7f0c0132

    invoke-direct {v3, v4, v5}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 52
    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v6, v7, v2}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;ZI[Ljava/lang/Object;)V

    goto :goto_0

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
