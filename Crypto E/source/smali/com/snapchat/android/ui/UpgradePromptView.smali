.class public Lcom/snapchat/android/ui/UpgradePromptView;
.super Lcom/snapchat/android/ui/VerticalSwipeLayout;
.source "SourceFile"


# instance fields
.field private final a:Lcom/snapchat/android/util/system/Clock;

.field private final b:Lcom/snapchat/android/model/UserPrefs;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 28
    new-instance v0, Lcom/snapchat/android/util/system/Clock;

    invoke-direct {v0}, Lcom/snapchat/android/util/system/Clock;-><init>()V

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->a()Lcom/snapchat/android/model/UserPrefs;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/snapchat/android/ui/UpgradePromptView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/snapchat/android/util/system/Clock;Lcom/snapchat/android/model/UserPrefs;)V

    .line 29
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/snapchat/android/util/system/Clock;Lcom/snapchat/android/model/UserPrefs;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/ui/VerticalSwipeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/UpgradePromptView;->c:Z

    .line 39
    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/snapchat/android/ui/UpgradePromptView;->a(ID)V

    .line 40
    new-instance v0, Lcom/snapchat/android/ui/UpgradePromptView$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/UpgradePromptView$1;-><init>(Lcom/snapchat/android/ui/UpgradePromptView;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/UpgradePromptView;->setOnScrolledListener(Lcom/snapchat/android/ui/VerticalSwipeLayout$OnScrolledListener;)V

    .line 33
    iput-object p3, p0, Lcom/snapchat/android/ui/UpgradePromptView;->a:Lcom/snapchat/android/util/system/Clock;

    .line 34
    iput-object p4, p0, Lcom/snapchat/android/ui/UpgradePromptView;->b:Lcom/snapchat/android/model/UserPrefs;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/UpgradePromptView;)Z
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/snapchat/android/ui/UpgradePromptView;->c:Z

    return v0
.end method

.method static synthetic a(Lcom/snapchat/android/ui/UpgradePromptView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/snapchat/android/ui/UpgradePromptView;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/ui/UpgradePromptView;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/snapchat/android/ui/UpgradePromptView;->e()V

    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/snapchat/android/ui/UpgradePromptView;->b:Lcom/snapchat/android/model/UserPrefs;

    iget-object v1, p0, Lcom/snapchat/android/ui/UpgradePromptView;->a:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v1}, Lcom/snapchat/android/util/system/Clock;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/model/UserPrefs;->d(J)V

    .line 69
    const-string v0, "UpgradePromptView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPanelSelected - setSuggestionPromptLastDismissedTimestamp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/ui/UpgradePromptView;->b:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {v2}, Lcom/snapchat/android/model/UserPrefs;->aC()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 74
    const-string v0, "UpgradePromptView"

    const-string v1, "showPrompt()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    new-instance v0, Lcom/snapchat/android/ui/UpgradePromptView$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/UpgradePromptView$2;-><init>(Lcom/snapchat/android/ui/UpgradePromptView;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/UpgradePromptView;->post(Ljava/lang/Runnable;)Z

    .line 88
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/UpgradePromptView;->c:Z

    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/UpgradePromptView;->a(I)V

    .line 93
    return-void
.end method
