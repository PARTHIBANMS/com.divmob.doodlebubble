.class public interface abstract Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/anddev/andengine/util/modifier/ease/EaseLinear;->getInstance()Lorg/anddev/andengine/util/modifier/ease/EaseLinear;

    move-result-object v0

    sput-object v0, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->DEFAULT:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    return-void
.end method


# virtual methods
.method public abstract getPercentage(FF)F
.end method
