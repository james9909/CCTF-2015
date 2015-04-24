.class public Lcom/snapchat/android/fragments/sendto/SendToFilter;
.super Lcom/snapchat/android/util/listview/ScFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/util/listview/ScFilter",
        "<",
        "Lcom/snapchat/android/fragments/sendto/SendToItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/fragments/sendto/SendToItem;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/snapchat/android/util/debug/ExceptionReporter;Lcom/snapchat/android/util/listview/ScFilter$ScFilterInterface;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/fragments/sendto/SendToItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;",
            "Lcom/snapchat/android/util/debug/ExceptionReporter;",
            "Lcom/snapchat/android/util/listview/ScFilter$ScFilterInterface",
            "<",
            "Lcom/snapchat/android/fragments/sendto/SendToItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p3, p4}, Lcom/snapchat/android/util/listview/ScFilter;-><init>(Lcom/snapchat/android/util/debug/ExceptionReporter;Lcom/snapchat/android/util/listview/ScFilter$ScFilterInterface;)V

    .line 30
    iput-object p1, p0, Lcom/snapchat/android/fragments/sendto/SendToFilter;->c:Ljava/util/List;

    .line 31
    iput-object p2, p0, Lcom/snapchat/android/fragments/sendto/SendToFilter;->d:Ljava/util/List;

    .line 32
    return-void
.end method

.method protected static a(Lcom/snapchat/android/model/Friend;Ljava/lang/String;)Z
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 81
    :goto_0
    return v0

    .line 67
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->b()Ljava/lang/String;

    move-result-object v3

    .line 71
    if-eqz v3, :cond_1

    .line 72
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 75
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    invoke-static {v2, v0, p1}, Lcom/snapchat/android/util/ScTextUtils;->a(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 77
    goto :goto_0

    :cond_3
    move v0, v1

    .line 81
    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/fragments/sendto/SendToItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFilter;->c:Ljava/util/List;

    .line 61
    :goto_0
    return-object v0

    .line 42
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 43
    const/4 v0, 0x0

    .line 45
    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFilter;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 46
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/snapchat/android/util/ScTextUtils;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 47
    const/4 v1, 0x1

    .line 50
    :cond_2
    invoke-static {v0, p1}, Lcom/snapchat/android/fragments/sendto/SendToFilter;->a(Lcom/snapchat/android/model/Friend;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 51
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 55
    :cond_3
    if-nez v1, :cond_4

    .line 56
    new-instance v0, Lcom/snapchat/android/model/Friend;

    invoke-direct {v0, p1}, Lcom/snapchat/android/model/Friend;-><init>(Ljava/lang/String;)V

    .line 57
    sget-object v1, Lcom/snapchat/android/model/Friend$SuggestState;->PENDING:Lcom/snapchat/android/model/Friend$SuggestState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Friend;->a(Lcom/snapchat/android/model/Friend$SuggestState;)V

    .line 58
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object v0, v2

    .line 61
    goto :goto_0
.end method
