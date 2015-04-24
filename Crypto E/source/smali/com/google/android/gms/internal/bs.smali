.class public final Lcom/google/android/gms/internal/bs;
.super Lcom/google/android/gms/internal/bu$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation


# instance fields
.field private final pO:Lcom/google/android/gms/internal/w;

.field private final pP:Ljava/lang/String;

.field private final pQ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/w;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/bu$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/bs;->pO:Lcom/google/android/gms/internal/w;

    iput-object p2, p0, Lcom/google/android/gms/internal/bs;->pP:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/bs;->pQ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/dynamic/d;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/bs;->pO:Lcom/google/android/gms/internal/w;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/e;->f(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/w;->b(Landroid/view/View;)V

    goto :goto_0
.end method

.method public getBaseURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bs;->pP:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bs;->pQ:Ljava/lang/String;

    return-object v0
.end method

.method public recordClick()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bs;->pO:Lcom/google/android/gms/internal/w;

    invoke-interface {v0}, Lcom/google/android/gms/internal/w;->recordClick()V

    return-void
.end method

.method public recordImpression()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bs;->pO:Lcom/google/android/gms/internal/w;

    invoke-interface {v0}, Lcom/google/android/gms/internal/w;->recordImpression()V

    return-void
.end method
