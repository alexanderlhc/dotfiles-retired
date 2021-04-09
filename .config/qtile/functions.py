from libqtile.lazy import lazy

###
# Source: https://github.com/qtile/qtile/issues/1260#issuecomment-492738226
@lazy.function
def float_to_front(qtile):
    """
    Bring all floating windows of the group to front
    """
    # logging.info("bring floating windows to front")
    for window in qtile.current_group.windows:
        if window.floating:
            window.cmd_bring_to_front()
