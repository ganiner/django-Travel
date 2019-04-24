from rest_framework.permissions import BasePermission, SAFE_METHODS


class IsSuperUser(BasePermission):
    """ Allow access only to superusers. """

    message = 'Allow access only to superusers.'

    def has_permission(self, request, view):
        return bool(
            request.method in SAFE_METHODS or
            request.user and
            request.user.is_authenticated and
            request.user.is_staff and
            request.user.is_superuser
        )


class IsAuthor(BasePermission):

    message = 'You must be the author of this article.'

    def has_object_permission(self, request, view, obj):
        return request.user == obj.author


class IsAuthorOrReadOnly(BasePermission):

    safe_method = ['GET', 'PUT', 'DELETE', 'OPTIONS']
    message = 'You must be the author of this article.'


    def has_object_permission(self, request, view, obj):
        if request.method in ('GET',):

            return True

        return (request.user == obj.author) or request.user.is_superuser
